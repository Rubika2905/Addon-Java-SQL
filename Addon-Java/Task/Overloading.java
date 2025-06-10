class methods{
	 public void sum(int a,int b) {
		 System.out.println("Enter the value int a:"+a);
		 System.out.println("Enter the value int b:"+b);
		 System.out.println("total sum:"+(a+b));
	 }
    public void sum(double a,double b) {
	     System.out.println("Enter the value double a:"+a);
	     System.out.println("Enter the value double b:"+b);
	     System.out.println("total sum:"+(a+b));
     }
}

public class Overloading {

	public static void main(String[] args) {
		methods cv=new methods();
		cv.sum(10, 20);
		cv.sum(20.0, 30.3);
	}

	}