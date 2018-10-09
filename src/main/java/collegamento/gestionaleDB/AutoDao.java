package collegamento.gestionaleDB;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import collegamento.gestionale.Auto;

@Repository
public class AutoDao { 
	
	public  List<Auto> allAuto() throws SQLException {
		
		Configuration configuration = new Configuration();
		configuration.configure("hibernate-collegamento.xml");
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		
		Session session = sessionFactory.openSession();
		
		List<Auto> lista = session.createQuery("from Auto", Auto.class).getResultList();
		
		
//		final Statement k = new DB().getStatemant();
//		List<Auto> auto = new ArrayList<Auto>();
//		ResultSet allAuto = k.executeQuery("SELECT * FROM auto");
//		while(allAuto.next()) {
//		String casa = allAuto.getString("casaAuto");
//		String modello = allAuto.getString("modello");
//		String colore = allAuto.getString("colore");
//		double km = allAuto.getInt("km");
//		double anno = allAuto.getInt("anno");
//		double prezzo = allAuto.getInt("prezzo");
//		int id = allAuto.getInt("id");
//		String stato = allAuto.getString("stato");
	
	
//		Auto u= new Auto(casa,modello,colore,km,anno,prezzo,id,stato);
//		auto.add(u);	
//		}
		
		return lista;
	}
	
	
	public void aggiungi(Auto auto){
		
		Configuration configuration = new Configuration();
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		configuration.configure("hibernate-collegamento.xml");
		Session session = sessionFactory.openSession();
		
		Transaction transaction = session.beginTransaction();
		session.save(auto);
		transaction.commit();
	}

}
