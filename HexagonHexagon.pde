Hexagon[] _hex;
float radius;
int num_x, num_y;

void setup()
{
  size(512, 512);
  smooth();
  stroke(1);
  frameRate(3);
  
  _hex = new Hexagon[0];
  
  radius = 15;
  num_x = ceil(width / radius);
  num_y = ceil(height / radius);
  
  for(int y = 0; y < num_y ; y++)
  {
    for(int x = 0; x < num_x ; x++)
    {
      float zure = (y % 2) * (radius * sqrt(3)) / 2;
      Hexagon hex = new Hexagon(x * (radius * sqrt(3)) + zure, y * (radius + radius / 2), radius, 128);
      _hex = (Hexagon[])append(_hex, hex);
    }
  }
}

void draw()
{
  background(0);
  
  for(int i = 0; i < _hex.length; i += 1)
  {
    _hex[i].drawMe(); //<>//
  }
}

void mousePressed()
{
  
}