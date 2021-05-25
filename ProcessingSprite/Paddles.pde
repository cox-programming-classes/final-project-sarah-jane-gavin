public class Paddles extends Sprite
{
  protected float radius;
  protected color myColor;
  protected float r;
  float thetapos; 
  Vector2 v;
  Vector2 v2;
  Vector2 v3;
  Vector2 v4;
  
  public Paddles(float x, float y, float r)
  {
   super(x, y); 
   this.r = r;
  }
  
  public Paddles(float x, float y,  Vector2 v,  Vector2 v2,  Vector2 v3,  Vector2 v4, float thetamin, float thetamax)
  {
   super(x, y); 
   this.r = r;
   this.v = v;
   this.v2 = v2;
   this.v3 = v3;
   this.v4 = v4;
  }
  
  public void drawSprite()
  {
    fill(#012467);
    //noStroke();
      //Vector2 v = new Vector2(0,50);
      Vector2 rotatedv = v.rotate(thetapos).add(pos);
    Vector2 rotatedv2 = v2.rotate(thetapos).add(pos);
    Vector2 rotatedv3 = v3.rotate(thetapos).add(pos);
    Vector2 rotatedv4 = v4.rotate(thetapos).add(pos);
    beginShape();
    vertex(rotatedv.x, rotatedv.y);
    vertex(rotatedv2.x, rotatedv2.y);
    vertex(rotatedv3.x, rotatedv3.y);
    vertex(rotatedv4.x, rotatedv4.y);
    endShape();
    
    rect(375, 750, 100,50);
    rect(575, 750,100,50);
    //need to figure out how to get the second paddle to show up
    //fill(#012367);
    ////noStroke();
    //  Vector2 v5 = new Vector2(0,-50);
    //Vector2 v6 = v.rotate(PI/2);
    //Vector2 v7 = v6.rotate(PI/2);
    //Vector2 v8 = v7.rotate(PI/2);
    //beginShape();
    //vertex(pos.add(v5).x, pos.add(v5).y);
    //vertex(pos.add(v6).x, pos.add(v6).y);
    //vertex(pos.add(v7).x, pos.add(v7).y);
    //vertex(pos.add(v8).x, pos.add(v8).y);
    //endShape();
    }
     boolean collidesWith(ICollisionBox other)
  {
    float distance = this.pos.subtract(other.getPosition()).mag();
    return distance < this.radius + other.getRadius();
  }
    
    float getRadius()
  {
    return radius;
  }
  
  Vector2 getPosition()
  {
    return pos;
  }
  void move()
  {
    thetapos++;
  }
}
// 310 instead of 375
// 690 instead of 625
