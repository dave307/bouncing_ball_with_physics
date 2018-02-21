Mover[] movers;
float Fwind = random(-2,2);

void setup(){
 //size(640,360);
 fullScreen();
 movers = new Mover[5];
 for (int i = 0; i < movers.length; i++){
   movers[i] = new Mover();
 } //<>//
}

void draw(){
 background(255);
 
 for (Mover m : movers){
 
 
PVector gravity = new PVector(0,0.5);
gravity.mult(m.mass); 
m.applyForce(gravity);
 
if (mousePressed){
PVector wind = new PVector(Fwind,0);
m.applyForce(wind);
} 
 
PVector friction = m.velocity.get(); //<>//
friction.normalize();
float c = -0.01;
friction.mult(c);
m.applyForce(friction);
 
 
 
 
 m.update();
 m.edges();
 m.display();
}
}