package collegamento.gestionaleDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {
	
	private Statement statement;

	public DB() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
		}
//		Connection connection =   DriverManager.getConnection(
//				"jdbc:mysql://localhost:3306/auto?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
//				"root", "admin");
		Connection connection =   DriverManager.getConnection("jdbc:mysql://eu-cdbr-west-02.cleardb.net:3306/heroku_f5d1a1c1bf3c471?reconnect=true", "be0523bcb18f06", "414539fe");
				
		this.statement = connection.createStatement();

	}

	public Statement getStatemant() {
		return statement;
	}
}
