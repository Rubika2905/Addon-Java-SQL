class Laptop {
        String name;
        int ramSize;
        Laptop(String name , int ramSize){
            this.name=name;
            this.ramSize=ramSize;
        }
        void Display(){
        System.out.println("Model Name:"+name);
        System.out.println("Ram Size:" +ramSize +"GB");
    }
      public static void main(String[] args){
           Laptop ref=new Laptop("HP",8);
           ref.Display();
      }
}