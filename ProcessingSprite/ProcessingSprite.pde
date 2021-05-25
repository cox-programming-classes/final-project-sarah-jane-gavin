Blob blob;
Force g;
Paddles paddles;
ArrayList <ICollisionBox> collidingObjects;

void setup()
{
  size(1000, 800);
  blob = new Blob(100, 100, 1, 3);
  g = new Force(0, 0.098);
  paddles = new Paddles(400,300, new Vector2(-5, -5), new Vector2(-5, 5), new Vector2(145, 5), new Vector2(145, -5), 10, 10);
  //paddles = new Paddles(400,300, new Vector2(690, 750), new Vector2(690, 800), new Vector2(540, 750), new Vector2(540,800), 10, 10);
  
   //collidingObjects = new ArrayList<ICollisionBox>();
   //collidingObjects.add(paddles);
  // collidingObjects.add(blob);
}

//void checkCollisions()
//{
//  for(int i = 0; i < collidingObjects.size(); i++)
//  {
//    ICollisionBox obj = collidingObjects.get(i);
//    for(int j = i+1; j< collidingObjects.size(); j++)
//    {
//      ICollisionBox obj2 = collidingObjects.get(j);
//      if(obj.collidesWith(obj2))
//      {
        
//      }
//    }
//  }
//}

void draw()
{
  background(255);
  g.applyTo(blob);
  blob.drawSprite();
  blob.move();
  paddles.drawSprite();
  paddles.move();
  //paddles.angularvelocity();
}

//override the move movement method to change the theta 
// move the paddle it would move the angle 
