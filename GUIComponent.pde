/***********************************************************************
*  This is GUIComponent interface which can be used for any GUI        *
*  component that has a desirable position and size on screen.         *
************************************************************************/

public interface GUIComponent
{
  /**
    Takes in the parameter pX as the horizontal x.
    And takes in the parameter pY as the vertical y.
  **/
  public abstract void setPosition(int pX, int pY);
  
  /**
    Takes in the parameter w as the width and h as the height of this component.
  **/
  public abstract void setSize(int w, int h);
}
