public class vfCalc {

   public Decimal result{get;set;}
   public Decimal x{get; set;}
   public Decimal y{get; set;}
   
   public PageReference sum() {
   result =x+y;
   return null;
   }
   public PageReference sub() {
   result =x-y;
   return null;
   }
   public PageReference mul() {
   result =x*y;
   return null;
   }
   public PageReference div() {
   result =x/y;
   return null;
   }
   
}