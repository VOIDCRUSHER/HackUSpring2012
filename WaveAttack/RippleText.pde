

class Line
{
  String myString;
  int xPosition;
  int yPosition;
  int highlightNum;
  float speed;
  float curlInX;
  Letter myLetters[];
  
  Line(String s, int i, int j) 
  {
    myString = s;
    xPosition = i;
    yPosition = j;
    myLetters = new Letter[s.length()];
    float f1 = 0.0;
    for(int k = 0; k < s.length(); k++)
    {
      char c = s.charAt(k);
      f1 += textWidth(c);
      Letter letter = new Letter(c, f1, 0.0);
      myLetters[k] = letter;
    }

    curlInX = 0.1;
  }
  
  void print(){
    float f1 = sin((i + 1.0) * (millis() / 10000.0) * TWO_PI);
      float f2 = sin((8.0 - i) * (millis() / 10000.0) * TWO_PI);
      pushMatrix();
      translate(0.0,yPosition, 0.0);
      for(int j = 0; j < myLetters.length; j++) {
        if(j != 0) {
          translate(textWidth(myLetters[j - 1].myChar) * 75, 0.0, 0.0);
        }
        rotateY(f1 * 0.005 * f2);
        pushMatrix();
        scale(25.0);
        text(myLetters[j].myChar, 0.0, 0.0);
        popMatrix();
      }
      popMatrix();
}
  class Letter
  {
    char myChar;
    float x;
    float y;
    
    Letter(char c, float f, float f1)
    {
      myChar = c;
      x = f;
      y = f1;
    }
  }
}
