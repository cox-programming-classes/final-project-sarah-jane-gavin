public class Blob extends Sprite 
{
  protected float radius;
  protected color myColor;
  
  public Blob(float x, float y)
  {
   super(x, y); 
  }
  
  public Blob(float x, float y, float dx, float dy)
  {
   super(x, y); 
   vel = new Vector2(dx, dy);
  }
  
  public Blob(Vector2 s)
  {
    super(s); 
  }
  
  public void drawSprite()
  {
    fill(#012467);
    ellipse(pos.x, pos.y, 30, 30);
    }
  
  float getRadius()
  {
    return radius;
  }
  
  Vector2 getPosition()
  {
    return pos;
  }
  
  public void keyboardControl()
  {
    if(keyCode == UP) 
    {
      vel = new Vector2(0, -2);
    }
    
    if(keyCode == DOWN)
    {
      vel = new Vector2(0, 2);
    }
    
    if(keyCode == LEFT)
    {
      vel = new Vector2(-2, 0);
    }
    
    if(keyCode == RIGHT)
    {
      vel = new Vector2(2, 0);
    }
  }
}