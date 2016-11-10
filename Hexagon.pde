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
     
    fillColor = color(255, 255, 255); 
    alpha = a;
  }
  
  void drawMe()
  {
    pushMatrix();
    translate(center_x, center_y);  
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