public class Boundaries
{  
  final int leftWall_x = 40;
  final int rightWall_x = 950;
  final int shoulder_y = 540;
  
public void draw()
  {
    fill(225, 10, 10);
    rect(0, 750, 310, 50);
    rect(0, 0, 40, 750);
    rect(690, 750, 960, 50);
    rect(950, 100, 10, 650);
    
    triangle(leftWall_x, shoulder_y, 40, 750, 310, 750);
    triangle(rightWall_x, shoulder_y, 950, 750, 690, 750);
    triangle(1000, 0, 750, 0, 1000, 60);
    
    fill(#000080);
    beginShape();
    vertex(125, 0);
    vertex(175, 60);
    vertex(485, 60);
    vertex(535, 0);
    endShape();
  }
 
public void checkCollisions(Blob blob)
{
  if(blob.pos.x < 40 && blob.pos.y < 540)
  {
    blob.vel.x = -blob.vel.x;
  }
  
  else if(blob.pos.x < 310 && blob.pos.y > (7.0/9.0 * blob.pos.x) + (4580.0/9.0))
  {
    //special bounce case
    blob.vel = blob.vel.reflectAcross(new Vector2(9, -7));
  }
  
  else if(blob.pos.x < 310 && blob.pos.y > 750 && blob.pos.y < 800)
  {
    blob.vel.x = -blob.vel.x;
  }
  
  else if(blob.pos.x > 950 && blob.pos.x < 960 && blob.pos.y >100 && blob.pos.y <750)
  {
    blob.vel.x = -blob.vel.x;
  }
  
  else if(blob.pos.x > 690 && blob.pos.y - 540 > (-21.0/26.0) * (blob.pos.x - 950))
  {
    blob.vel = blob.vel.reflectAcross(new Vector2(26, 21));
  }
}
}