package collegamento.gestionale;

public class Moto {
	
	private String casaMoto;
	private String modello;
	private String colore;
	private double km;
	private double anno;
	private double prezzo;
	private int id;
	private String stato;
	
	public Moto() {
		
	}
	
	
	
	public Moto(String casaMoto, String modello, String colore, double km, double anno, double prezzo, int id,String stato) {
		super();
		this.casaMoto = casaMoto;
		this.modello = modello;
		this.colore = colore;
		this.km = km;
		this.anno = anno;
		this.prezzo = prezzo;
		this.id = id;
		this.stato = stato;
	}



	public String getStato() {
		return stato;
	}



	public void setStato(String stato) {
		this.stato = stato;
	}



	public String getCasaMoto() {
		return casaMoto;
	}
	public void setCasaMoto(String casaMoto) {
		this.casaMoto = casaMoto;
	}
	public String getModello() {
		return modello;
	}
	public void setModello(String modello) {
		this.modello = modello;
	}
	public String getColore() {
		return colore;
	}
	public void setColore(String colore) {
		this.colore = colore;
	}
	public double getKm() {
		return km;
	}
	public void setKm(double km) {
		this.km = km;
	}
	public double getAnno() {
		return anno;
	}
	public void setAnno(double anno) {
		this.anno = anno;
	}
	public double getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
}
