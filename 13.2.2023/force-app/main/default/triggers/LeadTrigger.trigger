trigger LeadTrigger on Lead (                             
                             after update) {
                                 
                                 if(!checkRecursive.firstcall){
                                     
                                     checkRecursive.firstcall=true;
                                 
                                       Set<Id> LeadSetId= New Set<Id>();
                                         
                                         for(Lead singleLead:trigger.New){
                                             
                                             if(singleLead.Status=='Open - Not Contacted'){
                                                 LeadSetId.add(singleLead.id);
                                                 
                                                 // singleLead.Status='Working - Contacted';
                                             }
                                             
      
                                         }
                                         
                                         
                                         List<Lead> multiLead = [SELECT Id, FirstName,LastName, Status FROM Lead WHERE id=:LeadSetId ];
                                         
                                     for(Lead singleLead:multiLead){
                                         singleLead.Status='Working - Contacted';
                                     }
                                       
                                             
                                        
                                         
                                         update multiLead;
                                                                     
                                 
                                 
                                 
                                 
                                 }
                                 
                                 
}