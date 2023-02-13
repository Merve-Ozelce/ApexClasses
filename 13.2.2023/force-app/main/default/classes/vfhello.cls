public class vfhello {
//properties - variable
  public string message ='HELLO VISUAL FORCE I\'M APEX'; 
  public String vfvalue{get; set;}
  // methods
    public String getMessage() {
        return message;
    }
    
    public PageReference setMessage(){
    message = vfvalue;
    
    return null;
    }

  

}