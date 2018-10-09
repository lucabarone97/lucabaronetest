package collegamento.gestionaleDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import collegamento.gestionale.Moto;
import collegamento.gestionale.Scooter;



public class ScooterDao {

	public static  List<Scooter> allScooter() throws SQLException {
		final Statement k = new DB().getStatemant();
		List<Scooter> scooter = new ArrayList<Scooter>();
		ResultSet allScooter = k.executeQuery("SELECT * FROM scooter");
		while(allScooter.next()) {
		String casa = allScooter.getString("casaScooter");
		String modello = allScooter.getString("modello");
		String colore = allScooter.getString("colore");
		double km = allScooter.getInt("km");
		double anno = allScooter.getInt("anno");
		double prezzo = allScooter.getInt("prezzo");
		int id = allScooter.getInt("id");
		String stato = allScooter.getString("stato");

	
		Scooter u= new Scooter(casa,modello,colore,km,anno,prezzo,id,stato);
		scooter.add(u);	
		}
		
		return scooter;
	}
}
