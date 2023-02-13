public class firstClass {   
    // properties
    
    private Integer classNumber;  // private public global 
    private static String username;
    
    // methods.....    private (inside the class)       public               global
    public static void setUserName(String newUserName){
        username=newUserName;
    }
    public static String getUserName(){
        return username;
    }
    
    
    public static void welcome(){
        if(String.isNotBlank(username)){
            System.debug('Hello Apex Class' +username);
        }else{
        System.debug('Hello Bro...');
    }
               

    
}
}