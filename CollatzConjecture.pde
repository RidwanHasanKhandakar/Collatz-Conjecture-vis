void setup(){
    int n =5;
    int steps =0;
    do {
        println(n);
        n=collatz(n);
        steps++;
    } while (n!=1);
    println(collatz(10));
    println(steps);
}
void draw(){

}
int collatz(int n){
    if (n%2==0){
        return n/2;
    }else{
        return (n*3)+1;
    }
}
