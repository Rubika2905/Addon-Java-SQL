class Shoppingcart {
    void add_to_cart(String category , int price){
        System.out.println("Your category:"+category);
        System.out.println("Item Price:"+price);
    }
    void add_to_cart(String category , int price , int quantity) {
        int total = price * quantity;
        System.out.println("Total Price: "+total);
    }
    public static void main(String[] args) {
       Shoppingcart in=new Shoppingcart();
       in.add_to_cart("Shirt", 250);
       in.add_to_cart("Shirt", 250, 2);
    }
   
}