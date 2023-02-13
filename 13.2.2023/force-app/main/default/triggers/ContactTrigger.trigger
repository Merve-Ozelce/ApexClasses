trigger ContactTrigger on Contact (before insert) {
    //contact phone = null>update
    
    
    Set<Id> accountids = New Set<Id>();
    
    for(Contact singleContact:Trigger.New){
        if(String.isBlank(singleContact.phone)){
            
            accountids.add(singleContact.accountid);
            System.debug(singleContact.accountid);
        }
    }
    
    Map<Id,Account> MapAcc = New Map<Id,Account>([SELECT Id,Name,Phone FROM Account WHERE Id=:accountids]);
    
    System.debug(MapAcc);
    
    for(Contact singleContact:Trigger.New){
        if(String.isBlank(singleContact.phone)){
            
            System.debug(MapAcc.get(singleContact.AccountId));
            
            singleContact.OtherPhone=MapAcc.get(singleContact.AccountId).phone;
        }
    }
}