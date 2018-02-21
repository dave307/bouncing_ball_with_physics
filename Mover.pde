class Mover{
 PVector location;
 PVector velocity;
 PVector acceleration;
 float size;
 float mass;

 Mover(){
  location = new PVector(random(0,width),random(0,height));
  velocity = new PVector(0,0);
  acceleration = new PVector(0,0);
  mass = random(1,4);
  //mass = 1;
  size = mass*20;
   
 }
 
 
   void applyForce(PVector force){
   PVector f = PVector.div(force,mass);
   acceleration.add(f); 
    
  }
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  

  
  void display(){
    fill(200,100);
    strokeWeight(3);
    ellipse(location.x,location.y,size,size);
  }
  
  void edges(){
   if (location.x > width - size/2){
     location.x = width - size/2;
     velocity.x *= -1;
   } else if (location.x < 0){
    velocity.x *= -1;
      location.x = 0;
     
   }
     
     if (location.y > height - size/2){
       velocity.y *= -1;
       location.y = height - size/2;
     }
     
   }
    
  }