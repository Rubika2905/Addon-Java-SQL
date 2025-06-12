package task;
import java.io.FileWriter;
import java.io.IOException;

public class WriteToFile {

	public static void main(String[] args) {
		try {
			FileWriter Writer = new FileWriter("file.txt");
			Writer.write("hiii student");
			Writer.write("heloo world");
			Writer.write("welcome");
			Writer.close();
			System.out.println("sucessfully");
			}
		catch(Exception e) {
			System.out.println("An error occurs");
			e.printStackTrace();
		}
	}

}
