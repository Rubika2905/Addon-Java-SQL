import java.util.Scanner;
public class Stringreverse {

	public static void main(String[] args) {
		Scanner n =new Scanner(System.in);
				System.out.println("Enter a character:");
				String a=n.nextLine();
				String reverse ="";
				for(int i=a.length()-1;i>=0;i--) {
					reverse+=a.charAt(i);
				}
        System.out.println("Reverse String:"+reverse);
      
	}

}