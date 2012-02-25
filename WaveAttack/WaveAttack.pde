import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;

Line ln;
Line lns[];

String words[] = {
  "sometimes it's like", "the lines of text", "are so happy", "that they want to dance",
  "or leave the page or jump", "can you blame them?", "living on the page like that",
  "waiting to be read..."
};

void setup(){
  size(800, 480, OPENGL);
  
  // Array of line objects
  lns = new Line[8];

  // Load the font from the sketch's data directory
  textFont(loadFont("Consolas-Bold-66.vlw"), 1.0);

  // White type
  fill(255);

  // Creating the line objects
  for(int i = 0; i < 8; i++) {
    // For every line in the array, create a Line object to animate
    // i * 70 is the spacing
    ln = new Line(words[i], 0, i * 70);
    lns[i] = ln;
  }
  
  hint(DISABLE_DEPTH_MASK);
}

void draw() {
  background(0);  
  translate(-200, -50, -450);
  //Now animate every line object & draw it...
  for(int i = 0; i < 8; i++) {
    lns[i].print();
  }
}


