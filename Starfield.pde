Particle [] dot = new Particle[1000];
void setup()
{
  size(500, 500);
  background(0);
  for (int i = 0; i < dot.length; i++)
  {
    dot[i] = new Particle();
  }
  dot[0] = new OddballParticle();
}
void draw()
{
  fill(0, 50);
  rect(0, 0, 500, 500);
  for (int i = 0; i < dot.length; i++)
  {
    dot[i].move();
    dot[i].show();
  }
}

void mousePressed()
{
    for (int i = 0; i < dot.length; i++)
  {
    dot[i] = new Particle();
  }
  dot[0] = new OddballParticle();
  redraw();
}

class Particle
{
  double x, y, angle, speed;
  int particleColor;
  Particle()
  {
    x = y = 250;
    angle = (Math.random() * 2 * Math.PI);
    speed = Math.random() * 10;
  }
  void move()
  {
    x +=  Math.cos(angle) * speed;
    y +=  Math.sin(angle) * speed;
  } 
  void show()
  {
    fill(255);
    ellipse((float)x, (float)y, 5, 5);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle()
  {
    
  }
  
  void move()
  {
    x += ((int)(Math.random() * 3) - 1);
    y += ((int)(Math.random() * 3) - 1);
  }
  
  void show()
  {
    fill(255, 255, 255);
    ellipse((float)x, (float)y, 50, 25);
    fill(25, 207, 197);
    ellipse((float)x, (float)y - 10, 25, 15);
    fill(255, 0, 0);
    ellipse((float)x - 15, (float)y + 3, 5, 5);
    ellipse((float)x, (float)y + 4, 5, 5);
    ellipse((float)x + 15, (float)y + 3, 5, 5);
  }
}
