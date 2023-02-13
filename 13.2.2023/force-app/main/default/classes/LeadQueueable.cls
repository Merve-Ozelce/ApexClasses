public class LeadQueueable implements Queueable{
    
    List<Lead> multiLead = New List<Lead>();
    String LeadSourceStr;
    
    
    
    
    public LeadQueueable(List<Lead> LeadList, String LeadSourceStr){
        multiLead=LeadList;
        this.LeadSourceStr=LeadSourceStr;
        
        System.debug(LeadList);
        System.debug(LeadSourceStr);
        System.debug(this.LeadSourceStr);
        
    }
    
    
    public void execute(QueueableContext context){
        
        
        for(Lead singleLead:multiLead){
            singleLead.LeadSource=LeadSourceStr;
            System.debug(singleLead);
        }
        System.debug(multiLead);
        update multiLead;
    }    

}