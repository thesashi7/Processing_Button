/****************************************************************************************************
*  This is a Button class which implements GUIComponent and componentClickable interface.           *
*  This has the required functionalities of a rectangluar button with adjustable size and position. *
*  And, an ActionListener is required to be added to this Button object for proper event handling.  *
****************************************************************************************************/
public class Button implements GUIComponent, ComponentClickable
{
  /* Horizontal x and vertical y position
     width and height of the Button
     rC,gC,bC are red, green, and blue color composition of the button
     text is the button's displayed text
  */
  private int x,y, width,height, rC, gC, bC;
  private String text="";
  private ActionListener action=null;
  
  /**Default Constructor
  **/
  public Button()
  {}
  
  /**
    Constructor that takes in position x,y as pX, pY and width, height as w,h.
  **/
  public Button(int pX, int pY, int w, int h)
  {
    this.x= pX;
    this.y=pY;
    this.width=w;
    this.height=h;
  }

  /**
    @Implemented from GUIComponent
  **/
  public void setPosition(int pX, int pY)
  {
    this.x=pX;
    this.y=pY;
  }
  
  /**
    @Implemented from GUIComponent
  **/
  public void setSize(int w, int h)
  {
    this.width=w;
    this.height=h;
  }
  
  /**
    Takes in the text to be displayed as txt in the parameter.
  **/
  public void setText(String txt)
  {
    this.text= txt;
  }
  
  /**
    @Implemented from ComponentClickable
  **/
  public void addActionListener(ActionListener event)
  {
    this.action=event;
  }

  
  /**
    Draws this button in the already given position and size.
  **/
  public void drawButton()
  {
    boolean pressed=false;
    //set colors red, green and blue
    rC=100;
    gC=60;
    bC=50;
   
   if(mouseHover())
   {
     rC=50; // change button color
     if(mousePressed == true) performAction();   
   }
   
   fill(rC,gC,bC);   // set color inside the rectangle
   stroke(rC,gC,bC); // set color used to draw the rectangle
   rect(this.x,this.y,this.width, this.height); //draw button
   
   fill(0);
   textSize((width+height)/10);
   text(text, this.x+width/5, this.y+(height+10)/2);
  }
    
  /**
    @ Implemented from ComponentClickable
  **/
  public void performAction()
  {
    rC=50;
    gC=200;
    bC=100;
    
    if(this.action!=null)this.action.actionPerform();
  }
  
  /**
    Returns true if mouse is over this rectangular button or else false
  **/
  private boolean mouseHover()
  {
   if(this.x+this.width>=mouseX && this.y+this.height>=mouseY)
   {
      if(mouseX>=this.x && mouseY>=this.y)
      {
        return true;
      }
   }
   return false;
  }
 
}
