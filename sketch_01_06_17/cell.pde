
class Cell
{

  int x;
  int y;
  int w = 100;
  int h = 100;
  int seed = 0;
  int centerX = 0;
  int centerY = 0;

  Cell(int _x, int _y, int _seed)
  {
    x = _x;
    y = _y;
    seed = _seed;
    centerX = x + w/2;
    centerY = y + h/2;
  }

  void setup() 
  {
    pushStyle();
      stroke(240);
      fill(255);
      strokeWeight(1);
      rect(x, y, w, h);
    popStyle();
  }

  void draw()
  {

    float bl = x + 10 ;
    float br = x + 90;
    float bottom = y + 95;

    int iterations = 3;
    for (int i = 0; i < iterations; i++)
    {
      float offset = (i+1) * seed;

      strokeWeight(offset);
      stroke(offset, offset);
      strokeCap(ROUND);

      bezier(
        bl, bottom, 
        offset, y, 
        offset + (w * i), y + (h * i), 
        br, bottom
        );
    }
  }
}