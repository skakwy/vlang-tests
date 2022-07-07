import mysql
import ui
fn main() {
	
	mut conn := mysql.Connection{
		host: '192.168.111.96'
		port: 3306
		username: 'user'
		password: '3142'
		dbname: 'vlangTest'
	}
	conn.connect()?
	res := conn.query('SELECT * FROM user WHERE id=0')?
	for row in res.rows() {
		println(row.vals.join(', '))
	}
	conn.close()
}
