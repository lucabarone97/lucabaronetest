package collegamento.gestionale;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import collegamento.gestionaleDB.AutoDao;
import collegamento.gestionaleDB.MotoDao;
import collegamento.gestionaleDB.MotorinoDao;
import collegamento.gestionaleDB.ScooterDao;

@RestController
public class RestService {
	
	
	@Autowired
	private AutoDao autoDao;
	
	@GetMapping("/allAuto")
	public List<Auto> allAuto() throws SQLException {

	return autoDao.allAuto();
	}
	
	@PostMapping("/add")
	public void aggiungi(@RequestBody Auto auto) {
		autoDao.aggiungi(auto);
		
	}
	
	@GetMapping("/allMoto")
	public List<Moto> allMoto() throws SQLException {
 
		return MotoDao.allMoto(); 
	}
	
	@GetMapping("/allScooter")
	public List<Scooter> allScooter() throws SQLException {
 
		return ScooterDao.allScooter(); 
	}
	
	@GetMapping("/allMotorino")
	public List<Motorino> allMotorino() throws SQLException {
 
		return MotorinoDao.allMotorino(); 
	}
}
