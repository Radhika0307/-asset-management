public class AnnonymousArrayExample {

    public static void main(String[] args) {
       
        System.out.println("first total of numbers: " + sum(new int[]{ 1, 2,3,4}));
        System.out.println("second total of numbers: " + sum(new int[]{ 1, 2,3,4,5,6,}));
      
    }
    
    public static int sum(int[] numbers)
      {

        int total = 0;
        for(int i: numbers){
            total = total + i;
        }
       return total;
    }
}
