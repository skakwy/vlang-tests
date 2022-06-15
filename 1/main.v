import mysql

fn main() {
	mut conn := mysql.Connection{
		host: 'localhost'
		port: 3306
		username: 'root'
		password: ''
		dbname: 'vlangtest'
	}
	conn.connect()?
	res := conn.query('SELECT name FROM user WHERE id=0')?
	println(res)
	for row in res.rows() {
		println(row.vals.join(', '))
	}
	conn.close()
}
