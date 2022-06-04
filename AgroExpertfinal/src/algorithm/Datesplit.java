package algorithm;

public class Datesplit {

	public static void main(String[] args) {
		String date = "12/8/2012";
		String[] dateParts = date.split("/");
		String day = dateParts[0]; 
		String month = dateParts[1]; 
		String yesr = dateParts[2]; 
		System.out.println("day"+day);
		System.out.println("month"+month);
		System.out.println(yesr);
	}

}
