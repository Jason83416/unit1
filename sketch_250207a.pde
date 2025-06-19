// Jason Zhao
// Feb 7 2025

size(1000, 700);
noLoop();  // draw once

// SKY 
noStroke();
for (int y = 0; y < 300; y++) {
  float t = map(y, 0, 300, 0, 1);
  fill(lerpColor(color(20, 60, 120), color(152, 227, 247), t));
  rect(0, y, width, 1);
}

// GROUND
fill(189, 193, 2);
rect(0, 450, width, 250);

// SUN GLOW
for (int r = 150; r > 50; r -= 25) {
  fill(237, 211, 10, map(r, 150, 50, 50, 200));
  ellipse(850, 150, r, r);
}

// MOUNTAINS
fill(46, 180, 40);
triangle(400, 450, 850, 150, 1000, 450);
triangle(50, 450, 400, 150, 600, 450);

fill(8, 155, 9);
triangle(750, 450, 850, 150, 1000, 450);
triangle(280, 450, 400, 150, 600, 450);

// ROBOT 
stroke(49, 43, 54);
line(475, 250, 475, 400);
line(500, 250, 500, 400);
line(450, 250, 450, 400);
line(475, 250, 575, 200);
line(475, 250, 400, 200);
line(475, 250, 650, 250);
noStroke();
fill(49, 43, 54);
ellipse(475, 250, 120, 120);
ellipse(480, 500, 120, 120);
rect(420, 400, 120, 120);
fill(142, 170, 180);
arc(550, 375, 100, 100, radians(20), radians(225), PIE);
fill(255);
ellipse(480, 260, 30, 30);
ellipse(480, 260, 5, 5);

// ANIMAL 
fill(75, 56, 53);
rect(200, 440, 60, 15);
rect(138, 440, 60, 15);
ellipse(225, 490, 30, 60);
ellipse(175, 490, 30, 60);
ellipse(200, 450, 80, 80);
ellipse(200, 400, 100, 100);
ellipse(160, 360, 30, 30);
ellipse(240, 360, 30, 30);
fill(255);
ellipse(180, 390, 15, 15);
ellipse(220, 390, 15, 15);
fill(0);
ellipse(180, 390, 5, 5);
ellipse(220, 390, 5, 5);
fill(75, 56, 53);
triangle(195, 405, 205, 405, 200, 410);
line(200, 410, 200, 420);
line(170, 380, 160, 370);
line(230, 380, 240, 370);
line(190, 420, 210, 420);

// TREE
// trunk
fill(101, 67, 33);
rect(800, 540, 20, 100);
// foliage layers with loops
for (int i = 0; i < 3; i++) {
  float size = 80 + i * 20;
  fill(34 + i*10, 139 + i*20, 34 + i*15);
  ellipse(800, 500 - i * 20, size, size);
}
