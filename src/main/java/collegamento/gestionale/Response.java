package collegamento.gestionale;

import java.util.List;


public class Response {
	
	List<Auto> auto;
	
	public List<Auto> allAuto() {
		return auto;
	}

	public void setAuto(List<Auto> auto) {
		this.auto = auto;
	}
}
