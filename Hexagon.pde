class Hexagon
{
  int index;
  float radius;
  float center_x, center_y;
  color fillColor;
  color firstColor;
  color nextColor;
  float alpha;
  
  Hexagon(int ind, float x, float y, float rad, float a)
  {
    index = ind;
    radius = rad;
    center_x = x;
    center_y = y;
     
    fillColor = color(255, 255, 255);
    firstColor = fillColor;
    nextColor = fillColor;
    alpha = a;
  }
  
  void compute()
  {
    if(firstColor != fillColor)
    {
      return;
    }
    
    if(index <= 0 || index >= _hex.length -1)
    {
      return;
    }
    
    if(_hex[index].fillColor == _hex[index - 1].fillColor && _hex[index].fillColor == _hex[index + 1].fillColor)
    {
      return;
    }
    
    changeColor();
  }
  
  void drawMe()
  {
    pushMatrix();
    translate(center_x, center_y);  
    
    fillColor = nextColor;
    fill(fillColor, alpha);
    
    beginShape();
    for(int ang = 30; ang < 360; ang += 60)
    {
      float radian = radians(ang);
      float vertex_x = radius * cos(radian);
      float vertex_y = radius * sin(radian);
      
      vertex(vertex_x, vertex_y);
    }
    endShape();
    
    popMatrix();
  }
  
  void changeColor()
  {
    nextColor = color(128 + random(128), 128 + random(128), 128 + random(128));
    // println("index = " + index + "fillColor = " + fillColor);
  }
}