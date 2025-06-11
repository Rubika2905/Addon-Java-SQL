import java.util.Scanner;

class Sample {
    public static void main(String[] args) {
        Scanner in=new Scanner(System.in);
        try{
            
        System.out.println("Enter the Number");
        int number = in.nextInt();
        int total = 10 / number;
        System.out.println("Total:"+total);
        }
        catch(Exception e) {
           System.out.println(e); 
        }
    }
}