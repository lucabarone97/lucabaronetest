package collegamento.gestionaleDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import collegamento.gestionale.Motorino;

public class MotorinoDao {
	
	public static  List<Motorino> allMotorino() throws SQLException {
		final Statement k = new DB().getStatemant();
		List<Motorino> motorino = new ArrayList<Motorino>();
		ResultSet allMotorino = k.executeQuery("SELECT * FROM motorino");
		while(allMotorino.next()) {
		String casa = allMotorino.getString("casaMotorino");
		String modello = allMotorino.getString("modello");
		String colore = allMotorino.getString("colore");
		double km = allMotorino.getInt("km");
		double anno = allMotorino.getInt("anno");
		double prezzo = allMotorino.getInt("prezzo");
		int id = allMotorino.getInt("id");
		String stato = allMotorino.getString("stato");

	
		Motorino u= new Motorino(casa,modello,colore,km,anno,prezzo,id,stato);
		motorino.add(u);	
		}
		
		return motorino;
	}
	
}
