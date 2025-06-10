class superclass{
	void method1() {
	System.out.println("Superclass");
	}
	
}

class subclass1 extends superclass{
	void method2() {
		System.out.println("subclass1");
	}
}

class subclass2 extends subclass1{
	void method3() {
		System.out.println("subclass2");
	}
}
public class Multilevel {

	public static void main(String[] args) {
		subclass2 m2=new subclass2();
               m2.method1();
               m2.method2();
               m2.method3();
               
               
				
	}

}