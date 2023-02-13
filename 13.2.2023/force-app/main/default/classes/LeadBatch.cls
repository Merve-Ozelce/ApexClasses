public class LeadBatch implements Database.Batchable<Sobject>{

    public Database.QueryLocator start(Database.BatchableContext BC){
        
        return Database.getQueryLocator('SELECT Id,FirstName,LastName,Company,LeadSource,Phone,Email From Lead');
    }
    
   public void execute(Database.BatchableContext BC,List<Lead> scope){
        for(Lead s:scope){
            s.FirstName = s.FirstName.toLowerCase();
            s.LastName = s.LastName.toLowerCase();
        }
        update scope;
    }
    public void finish(Database.BatchableContext BC){
       system.debug('Lead Batch is Finished.');
    }
    
}