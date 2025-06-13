import java.util.HashMap;
import java.util.Map;
class StudentMarks {
    public static void main(String[] args) {
         HashMap<String,Integer> StudentMarks=new HashMap <String,Integer>();
        StudentMarks.put("john",80);
        StudentMarks.put("hari",90);
        StudentMarks.put("pavi",85);
        int totalMarks=0;
        for(int marks:StudentMarks.values()) {
            totalMarks +=marks;
       // System.out.println(totalMarks);
        }
        System.out.println("Student Total Marks:"+totalMarks);
        double average=totalMarks / StudentMarks.size();
        System.out.println("Student Average Marks:"+average);
        
        for(Map.Entry<String,Integer> entry : StudentMarks.entrySet()) {
              System.out.println(entry.getKey()+" "+entry.getValue());
         }
    }
}

       