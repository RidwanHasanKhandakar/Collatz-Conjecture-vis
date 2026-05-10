public class CollatzConjecture{
    public static void main(String[] args){
        int n=100;
        do{
            System.out.println(n);
            n=collatz(n);
        }while (n!=1);
        System.out.println(n);
    }
    static int collatz(int n){
        if(n%2==0){
            return n/2;
        }else{
            return (n*3)+1;
        }
    }
}