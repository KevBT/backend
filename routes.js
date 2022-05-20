const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken')
// complements express
const route = express();
route.use(cors());
route.use(bodyParser.json());
// Port 
const PORT = 100;
// Database
const connection = require('./db.js')

  connection.connect(function(err){
	if(err){
		console.log('error', err)
	}else{
		console.log('conectado')
	}
  })

route.post('/api/register', (req, res, next) => {
	const hashPassword = bcrypt.hashSync(req.body.password, 10);
	const data = [
		[req.body.nickname, req.body.phone, req.body.email, hashPassword]
	];
	console.log(data);
	let sql = "INSERT INTO `users` (nickname, phone, email, password) VALUES ?"
	connection.query(sql, [data], (err, result) => {
		if (err) throw err;
		console.log('success', result)
	})
	res.status(200).send({
		code: 200,
		response: 'user register'
	});
	next()
})

route.post('/api/login', async (req, res, next) => {
	let nickname = req.body.nickname;
	let password = req.body.password;
	let sql = "SELECT * FROM users where nickname= ?"
	connection.query(sql, [nickname], async (err, fields) => {
		if (err) throw err;
		if(fields.length === 0){
			return res.status(401).send({
				error: "Invalid user or password!"
			})
		}
		const data = fields[0]
		const passwordHash = data.password
		const passwordCorrect = passwordHash  === null
		? false
		: await bcrypt.compare(password, passwordHash)
		
	if(!passwordCorrect){
		 return res.status(401).json({
			error: "Invalid user or password!"
		})
	}
		const userForToken = {
		  id: data.id,
	          nickname: data.nickname	
		}
		const token = jwt.sign(userForToken, '123', {
			expiresIn: 60 * 60 * 24 * 7
		})

		res.status(200).send({
			code: 200,
			token: token
		})
				
	})

})

route.get('/api/userdata', (req, res) => {
	const authorization = req.get('authorization')
	let token = null
	if(authorization && authorization.toLowerCase().startsWith('bearer')){
		token = authorization.substring(7)
	}
	const decodedToken = jwt.verify(token, '123')
	if(!token || !decodedToken.id){
		return res.status(401).json({ error: 'token missing or invalid' })
	}
	let nickname = decodedToken.nickname
	const sql = "select * from users INNER JOIN avatars ON users.avatar_id = avatars.id WHERE nickname = ?"
	connection.query(sql,  [nickname], (err, fields) => {
		if (err) throw err;
		let data = fields[0]
	res.status(200).json({
		nickname: data.nickname,
		email: data.email,
		avatar: data.image
		
	})
     })
})

route.listen(PORT, function(err){
	if(err) console.log(err);
	console.log('listener');
})



