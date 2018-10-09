package collegamento.gestionaleDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import collegamento.gestionale.Moto;

public class MotoDao {
	
	public static  List<Moto> allMoto() throws SQLException {
		final Statement k = new DB().getStatemant();
		List<Moto> moto = new ArrayList<Moto>();
		ResultSet allMoto = k.executeQuery("SELECT * FROM moto");
		while(allMoto.next()) {
		String casa = allMoto.getString("casaMoto");
		String modello = allMoto.getString("modello");
		String colore = allMoto.getString("colore");
		double km = allMoto.getInt("km");
		double anno = allMoto.getInt("anno");
		double prezzo = allMoto.getInt("prezzo");
		int id = allMoto.getInt("id");
		String stato = allMoto.getString("stato");

	
		Moto u= new Moto(casa,modello,colore,km,anno,prezzo,id,stato);
		moto.add(u);	
		}
		
		return moto;
	}
}
