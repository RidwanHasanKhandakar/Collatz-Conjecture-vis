float len = 6;
float angle = PI / 6;

void setup() {
    size(600, 600);
    background(0);
    stroke(255);

    translate(width / 2, height);

    for (int i = 1; i < 10000; i++) {

        long n = i;
        int steps = 0;

        resetMatrix();
        translate(width / 2, height);

        while (n != 1) {

            if (n % 2 == 0) {
                rotate(angle);
            } else {
                rotate(-angle);
            }

            line(0, 0, 0, -len);
            translate(0, -len);

            n = collatz(n);
            steps++;
        }

        println(steps);
    }

    println("Finished!!");
}

void draw() {

}

long collatz(long n) {
    if (n % 2 == 0) {
        return n / 2;
    } else {
        return (n * 3) + 1;
    }
}