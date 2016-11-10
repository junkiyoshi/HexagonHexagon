Hexagon[] _hex;
float _colornoise;
float radius;
int num_x, num_y;

void setup()
{
  size(1024, 1024);
  smooth();
  noStroke();
  frameRate(3);
  
  _hex = new Hexagon[0];
  _colornoise = random(10);
  
  radius = 20;
  num_x = ceil(width / radius);
  num_y = ceil(height / radius);
  
  for(int x = 0; x < num_x ; x++)
  {
    for(int y = 0; y < num_y ; y++)
    {
      float zure = (y % 2) * (radius * sqrt(3)) / 2;
      Hexagon hex = new Hexagon(x * (radius * sqrt(3)) + zure, y * (radius + radius / 2), radius, 128);
      _hex = (Hexagon[])append(_hex, hex);
    }
  }
}

void draw()
{
  for(int i = 0; i < _hex.length; i += 1)
  {
    _hex[i].drawMe(); //<>//
  }
}

void mousePressed()
{

}