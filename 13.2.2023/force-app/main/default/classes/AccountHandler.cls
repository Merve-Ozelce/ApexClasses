public class AccountHandler {
    public static Boolean addStudenttoCohortwithOpportunity (String CohortName, List<Contact> multiContact,list<opportunity>multiopp ){
               if(CohortName==null || CohortName==''){
            return false;
        }
                for(Contact loopcontact:multiContact){
            if(loopcontact.lastName==null || loopcontact.lastName==''){
                return false;
            }
                }     
            for(opportunity loopopp:multiopp){
     if(loopopp.Name==null ||loopopp.Name=='' || loopopp.CloseDate==null 
               || loopopp.StageName==null || loopopp.StageName=='' ){
                   return false;
               }
        }
                 Account singleAccount = New Account();
             singleAccount.Name=CohortName; 
        insert singleAccount;
          
            for(Contact loopcon:multiContact){
            loopcon.AccountId=singleAccount.id;
              }    
     for(Opportunity loopopp:multiopp){
            loopopp.AccountId=singleAccount.id;
                      }
         insert multiContact;
        insert multiopp;
     return true;        
    }
        }