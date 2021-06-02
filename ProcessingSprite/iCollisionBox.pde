public interface ICollisionBox
{
  public boolean collidesWith(ICollisionBox other);
  public float getRadius();
  public Vector2 getPosition();
}