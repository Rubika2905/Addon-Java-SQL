class DefaultConsturctor {
    DefaultConsturctor(){
        System.out.println("Default Consturctor");
    }
    public static void main(String[] args) {
        DefaultConsturctor ref=new DefaultConsturctor();
    }
}




class DefaultConsturctor {
    String language;
    String name;
    int year;
    DefaultConsturctor(String name , int year , String lang){
        this.name=name;
        this.year=year;
        this.language=lang;
        System.out.println("Default Consturctor"+name+" "+year+" "+lang);
    }
    public static void main(String[] args) {
        DefaultConsturctor ref=new DefaultConsturctor("Java",1995,"Programming");
    }
}






public class DefaultConstructor {
    String language;
    String name;
    int year;
    DefaultConstructor(String name , int year , String lang){
        this.name=name;
        this.year=year;
        this.language=lang;
    }
    DefaultConstructor(DefaultConstructor copy){
        this.name=copy.name;
        this.year=copy.year;
        this.language=copy.language;
       
    }
    void Display() {
       System.out.println("userdefine Constructor"+" "+name+" "+year);
   }
    public static void main(String[] args) {
        System.out.println("original constructor");
        DefaultConstructor ref=new DefaultConstructor("Java",1995,"Programming");
        ref.Display();
        System.out.println("Copy Constructor");
        DefaultConstructor ref2=new DefaultConstructor(ref);
        
        
        
    }
}