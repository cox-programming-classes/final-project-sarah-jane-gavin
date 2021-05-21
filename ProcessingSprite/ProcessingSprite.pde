ArrayList<Blob> blobs;

void setup()
{
  fullScreen();
  blobs = new ArrayList<Blob>();
}

void draw()
{
  background(255);
  for(Blob blob : blobs)
  {
    blob.move();
    blob.drawSprite();
  }
}
