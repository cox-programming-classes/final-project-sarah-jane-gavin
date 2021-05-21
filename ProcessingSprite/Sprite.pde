public abstract class Sprite
{
  protected Vector2 pos;
  protected Vector2 vel;
  protected Vector2 accel;
  
  public Sprite(float x, float y)
  {
    pos = new Vector2(x, y);
    vel = new Vector2(0, 0);
  }
  
  public Sprite(float x, float y, float dx, float dy)
  {
    pos = new Vector2(x, y);
    vel = new Vector2(dx, dy);
  }
  
  public Sprite(Vector2 s)
  {
    pos = s;
    vel = new Vector2(0, 0);
  }
  
  public Sprite(Vector2 s, Vector2 v)
  {
    pos = s;
    vel = v;
  }
  
 public abstract void drawSprite(); //void drawSprite must be in class that extends Sprite (ex. Blob)
  
 public void move()
  {
    //step the position "one frame" by the velocity vector
   pos = pos.add(vel);
    
    if(pos.x >= width) vel.x = -vel.x;
    else if(pos.x <= 0) vel.x = -vel.x; 
    
    if(pos.y >= height) vel.y = -vel.y;
    else if(pos.y <= 0) vel.y = -vel.y;
  }
  
  public void moveTo(Vector2 newPosition)
  {
    pos = newPosition;
  }
  
  public void setVelocity(Vector2 newVelocity)
  {
    vel = newVelocity;
  }
  
  public Vector2 getPosition()
  {
    return pos;
  }
  
  public Vector2 getVecoity()
  {
    return vel;
  }
  
  public float distanceTo(Sprite other)
  {
    Vector2 diff = other.pos.subtract(this.pos); //this is subject, other is direct object
    return diff.mag();
  }
}