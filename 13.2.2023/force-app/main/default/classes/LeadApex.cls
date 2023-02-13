public class LeadApex {
    //properties

    //Method
    public static void getLead(String eyalet,String sirket){
        List<Lead> get_Lead =[SELECT FirstName, LastName, Id, Title, Company, Phone, Email,State FROM Lead WHERE STATE=:eyalet And Company=:sirket]; //SOQL

for(Lead singleLead:get_Lead){
    system.debug(singleLead.FirstName);
    system.debug(singleLead.LastName);
    system.debug(singleLead.state);
    system.debug(singleLead.Company);
    system.debug('*******************');
    }
}
}