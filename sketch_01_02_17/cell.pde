
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
    centerX = x + 25;
  }

  void setup() 
  {
    stroke(240);
    fill(255);
    rect(x, y, w, h);
  }

  void draw()
  {
    noStroke();

    float bl = x + 25 ;
    float br = x + 75;
    float bottom = y + 95;
    
    int iterations = 3;
    for(int i = 0; i < iterations; i++)
    {
      float offset = (i) * 50;
      float variation = random(seed * i) + offset + (centerX - offset);
      float top = max(seed * i, 5) + y;
      
      fill(random(200), top + 25);
      triangle(bl, bottom, br, bottom, variation, top);
      
    }

  }
  
}