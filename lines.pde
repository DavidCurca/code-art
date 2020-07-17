float t1,angle;
int[][] colors = {{255, 0, 0},
                  {255, 127, 0},
                  {255, 255, 0},
                  {0, 255, 0},
                  {0, 0, 255},
                  {46, 4, 95},
                  {19, 0, 255}};

void setup(){
  background(20);
  size(1080, 608);
  smooth();
  rectMode(CENTER);
  stroke(0, 15, 30);
  strokeWeight(25);
  surface.setLocation(-2, -32);
  surface.setTitle("Code Art");
}

void draw(){
  background(20);
  stroke(255);
  strokeWeight(5);
  textSize(32);
  fill(0, 255, 0);
  textFont(createFont("andalemo.ttf", 52));
  text("Code Art!", width/2-140, 50);
  line(width/2, 0, width/2, height);
  strokeWeight(6);
  stroke(255);
  translate(width/2/2, height/2);
  scale(0.89);
  for(int i = 0; i < 10; i++){
    stroke(colors[i%7][0], colors[i%7][1], colors[i%7][2]);
    line(x1(t1+i), y1(t1+i), x2(t1+i), y2(t1+i));
  }
  translate(width/2+width/2/2-180, height/2-300);
  stroke(0, 15, 30);
  strokeWeight(15);
  scale(0.75);
  for(int i = 0; i < 100; i++){
    fill(i*10, 255-i*25, 255-i*10);
    scale(0.79);
    rotate(radians(angle));
    rect(0, 0, 600, 600);
  }
  t1 += 0.5;
  angle += 0.5;
}

float x1(float t){
  return sin(t / 10)*100 + sin(t / 5) * 20;
}

float y1(float t){
  return cos(t / 10)*100 + sin(t/5)*50;
}

float x2(float t){
  return sin(t / 10)*200 + sin(t) * 2 + cos(t)*10;
}

float y2(float t){
  return -cos(t / 20)*200 + cos(t/12)*20;
}
