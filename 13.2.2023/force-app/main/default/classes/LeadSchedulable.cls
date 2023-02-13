public class LeadSchedulable implements Schedulable {

    public void execute(SchedulableContext SC){
        
        List<Lead> multiLead = [SELECT Id, FirstName, LastName, Phone,Email FROM Lead LIMIT 200];
        
        for(Lead singleLead:multiLead){
            singleLead.firstName= singleLead.firstName.capitalize();
            singleLead.lastName = singleLead.lastName.toUpperCase();
        }
        
        update multiLead;
    }
}