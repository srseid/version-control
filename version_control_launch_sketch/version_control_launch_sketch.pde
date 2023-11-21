ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int j = particles.size()-1; j>=0;j--){
    particles.get(j).update();
    particles.get(j).display();
    if(particles.get(j).getPosition().y >= 400){
      particles.remove(j);
    }
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
