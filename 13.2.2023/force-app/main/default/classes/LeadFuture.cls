public class LeadFuture {
      
    @future      
    public static void updatePhone(String CompanyName,String Phone){
        System.debug('future Method başladı');
        List<Lead> multiLead= [SELECT Id,FirstName,LastName,Company,Phone 
                               FROM Lead 
                               WHERE Company =:CompanyName];
        
        for(Lead singleLead:multiLead){
            singleLead.Phone=Phone;
        }
        
        update multiLead;
    }

}