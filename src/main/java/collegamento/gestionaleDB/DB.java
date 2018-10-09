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
		Connection connection =   DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/auto?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
				"root", "admin");
		this.statement = connection.createStatement();

	}

	public Statement getStatemant() {
		return statement;
	}
}
