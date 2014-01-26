/***********************************************************************
*  This is componentClickable interface which can be used for any GUI  *
*  component that can be clicked by the user.                          *
************************************************************************/
public interface ComponentClickable
{
  /**
    Takes in an ActionListener as a parameter
    This actionListener is responsible for the event to occur if this object is clicked.
  **/
  public void addActionListener(ActionListener event);
  
  /**
    Performs the desirable event after this object is clicked one of which should be to
    call the actionPerform() of the ActionListener.
  **/
  public void performAction();

}
