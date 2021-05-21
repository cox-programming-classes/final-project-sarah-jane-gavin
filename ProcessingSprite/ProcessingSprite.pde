Blob blob;
Force g;

void setup()
{
  fullScreen();
  blob = new Blob(100, 100, 1, 3);
  g = new Force(0, 0.098);
}

void draw()
{
  background(255);
  g.applyTo(blob);
  blob.drawSprite();
  blob.move();
}