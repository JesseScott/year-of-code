
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

    float bl = x + 10 ;
    float br = x + 90;
    float bottom = y + 95;
    
    int iterations = 4;
    for(int i = 0; i < iterations; i++)
    {
      float offset = (i) * 25;
      float top = min(seed * i, 95);
      
      noFill();      
      stroke(random(55 + offset), offset);
      
      arc(centerX, bottom + top, w/2, h - top + offset, HALF_PI, TWO_PI);
      
    }

  }
  
}