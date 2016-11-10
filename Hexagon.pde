class Hexagon
{
  float radius;
  float center_x, center_y;
  color fillColor;
  float alpha;
  
  Hexagon(float x, float y, float rad, float a)
  {
    radius = rad;
    center_x = x;
    center_y = y;
     
    alpha = a;
  }
  
  void drawMe()
  {
    pushMatrix();
    translate(center_x, center_y);  
    
    _colornoise += 0.05;
    fillColor = color(0, 0, noise(_colornoise) * 255); 
    
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
}