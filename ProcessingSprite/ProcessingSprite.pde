Blob blob;
Force g;
Boundaries boundaries;
ArrayList< ICollisionBox> collidingObjects;

void setup()
{
  size(1000, 800);
  blob = new Blob(10, 10, 1, 3);
  g = new Force(0, 0.098);
  boundaries = new Boundaries();
  collidingObjects = new ArrayList< ICollisionBox>();
}

void draw()
{
  background(255);
  g.applyTo(blob);
  blob.drawSprite();
  blob.move();
  
  boundaries.draw();
  boundaries.checkCollisions(blob);
}

void checkCollisions()
{
  for(int i = 0; i < collidingObjects.size() - 1; i++)
  {
    ICollisionBox obj = collidingObjects.get(i);
  
    for(int j = i + 1; j < collidingObjects.size() - 1; j++)
   {
    ICollisionBox obj2 = collidingObjects.get(j);

      if(obj.collidesWith(obj2)) 
      {
        textSize(50);
        fill(255, 0 , 0);
        text("Boom", 100, 500);
      }
    }
  }
}