Hexagon[] _hex;
int _num_x, _num_y;
int index;
float radius;

void setup()
{
  size(1280, 720);
  smooth();
  noStroke();
  frameRate(24);
  
  _hex = new Hexagon[0];
  
  index = 0;
  radius = 30;
  _num_x = ceil(width / (radius * sqrt(3))) + 1;
  _num_y = ceil(height / (radius + radius / 2)) + 1;
  
  for(int y = 0; y < _num_y ; y++)
  {
    for(int x = 0; x < _num_x ; x++)
    {
      float zure = (y % 2) * (radius * sqrt(3)) / 2;
      Hexagon hex = new Hexagon(index, x * (radius * sqrt(3)) + zure, y * (radius + radius / 2), radius, 128);
      _hex = (Hexagon[])append(_hex, hex);
      index += 1;
    }
  }
}

void draw()
{
  background(0);

    for(int i = 0; i < _hex.length; i += 1)
  {
    _hex[i].compute();
  }
  
  for(int i = 0; i < _hex.length; i += 1)
  {
    _hex[i].drawMe(); //<>//
  }
  
  // _hex[int(random(index))].changeColor();
}

void mousePressed()
{
  println("mouseX = " + mouseX +  "mouseY = " + mouseY); 
  _hex[int(random(index))].changeColor();
}