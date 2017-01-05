
class Cell
{

  int x;
  int y;
  int w = 100;
  int h = 100;
  int seed = 0;
  int centerX = 0;

  Cell(int _x, int _y, int _seed)
  {
    x = _x;
    y = _y;
    seed = _seed;
    centerX = x + w/2;
  }

  void setup() 
  {
    stroke(240);
    fill(255);
    rect(x, y, w, h);
  }

  void draw()
  {
    noFill();

    float bl = x + 10 ;
    float br = x + 90;
    float bottom = y + 95;
    
    int iterations = 4;
    for(int i = 0; i < iterations; i++)
    {
      float offset = (i) * 25;
      float top = min(seed * i, 95) + y + 5;
      
      fill(255-offset, offset);
      stroke(random(200), 255-offset);
      triangle(bl, bottom, br, bottom, centerX, top);
      
    }

  }
  
}