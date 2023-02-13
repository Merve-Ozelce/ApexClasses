public class Calc {
    
    public static Integer sum(Integer x,Integer y){
        
        return x+y;
    }
    
    public static Integer sub(Integer x,Integer y){
        
        return x-y;
    }
    
     public static Integer mul(Integer x,Integer y){
        
        return x*y;
    }
     public static Decimal div(Decimal x,Decimal y){
         
         
         if(y==0){
             // throw an error.
             // 
             return 0;
         }
        
        return x/y;
    }
}