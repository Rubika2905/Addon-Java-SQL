import java.io.FileWriter;
import java.io.IOException;

public class String {

	public static void main(String[] args) {
		try {
			FileWriter Writer = new FileWriter("file.txt");
			Writer.write("Hello Java");
			Writer.write("Welcome to Java");
			Writer.write("Java Program");
			Writer.close();
			System.out.println("sucessfully");
			}
		catch(Exception e) {
			System.out.println("An error occurs");
			e.printStackTrace();
		}
	}

}