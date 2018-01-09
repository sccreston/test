JitterBug bug1; // Declare object
JitterBug bug2; // Declare object
JitterBug bug3; // Declare object
float a= random(width);
float b= random(height);
float c= random(height/2);


void setup() {
size(480, 120);
// Create object and pass in parameters
bug1 = new JitterBug(a, b, c);
bug2 = new JitterBug(a, b, c);
bug3 = new JitterBug(a, b, c);
}
void draw() {
bug1.move();
bug1.display();
bug2.move();
bug2.display();
bug3.move();
bug3.display();
}
class JitterBug {
float x;
float y;
int diameter;
float speed = 2.5;
JitterBug(float tempX, float tempY, int tempDiameter) {
 x = tempX;
y = tempY;
diameter = tempDiameter;
}
void move() {
x += random(-speed, speed);
y += random(-speed, speed);
}
void display() {
ellipse(x, y, diameter, diameter);
}
} 