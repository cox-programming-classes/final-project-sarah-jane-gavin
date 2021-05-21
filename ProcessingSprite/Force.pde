public class Force
{
  Vector2 accel;
  
  public Force(float d2x, float d2y)
  {
    accel = new Vector2(d2x, d2y);
  } 
  
  void applyTo(Sprite target)
  {
    target.vel = target.vel.add(accel);
  }
}