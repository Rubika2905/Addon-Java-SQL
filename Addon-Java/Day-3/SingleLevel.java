public class SingleLevel {
    void Message(){
     System.out.println("Sending");
    }
}
class subclass extends SingleLevel{
    void View(){
    System.out.println("Receiving");
    } 
}
class Main{
    public static void main(String[] args) {
        subclass ref=new subclass();
        ref.Message();
        ref.View();
        
    }
}