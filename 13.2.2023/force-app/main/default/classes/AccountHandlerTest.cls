@isTest
public class AccountHandlerTest {   
        @isTest
    public static void addStudenttoCohortwithOpportunity_TEST1(){  // POSTIVE BEHAVIOR , SINGLE ACCOUNT, MULTI CONTACT,MULTI OPPORTUNITY
        // Preapare Data
                List<Contact> multiContact = New List<Contact>();
        List<opportunity> multiopp = New List<Opportunity>();
                for(Integer x=1;x<=10;x++){
            Contact singleContact= New Contact();
            singleContact.FirstName='APEX ' + x;
            singleContact.LastName='STUDENT '+x;
            multiContact.add(singleContact);            
        }
        for(Integer x=1;x<=10;x++){
            Opportunity singleopp= New Opportunity();
            singleopp.Name='APEX TEST ' + x;
            singleopp.StageName='Prospecting ';
            singleopp.CloseDate=Date.Today()+45;
            singleopp.Amount=1000;
            multiopp.add(singleopp);            
        }
        Boolean result = AccountHandler.addStudenttoCohortwithOpportunity('TEST COHORT',multiContact,multiopp);
                        // Test and Evaluate
        List<Contact> conactual = [SELECT Id, Name, accountid, Account.Name FROM Contact];
        List<Opportunity> oppactual = [SELECT Id, Name, accountid, Account.Name,StageName, CloseDate, Amount FROM Opportunity];
        
        Account singleAcc = [SELECT id, Name FROM Account LIMIT 1];
        
        system.debug(multiContact);
        system.debug(multiopp);
        system.debug(conactual);
        system.debug(oppactual);
        system.debug(singleAcc);
        
        
        System.assertEquals(true, result);
        
        System.assertEquals(10, conactual.size());  
        
        System.assertNotEquals(null, conactual.get(0).accountid);  
        System.assertNotEquals(null, oppactual.get(0).accountid);  
        System.assertEquals(singleAcc.id, conactual.get(0).accountid); 
        System.assertEquals(singleAcc.id, oppactual.get(0).accountid);
        System.assertEquals('TEST COHORT', singleAcc.Name);
          }
       @isTest
    public static void addStudenttoCohortwithOpportunity_TEST2(){  // NEGATIVE BEHAVIOUR
                   // Preapare Data
         List<Contact> multiContact = New List<Contact>();
         List<opportunity> multiopp = New List<Opportunity>();
        
        for(Integer x=1;x<=10;x++){
            Contact singleContact= New Contact();
            singleContact.FirstName='APEX ' + x;
             multiContact.add(singleContact);            
        }
       for(Integer x=1;x<=10;x++){
            Opportunity singleopp= New Opportunity();
            singleopp.Name='APEX TEST1 ' + x;
            singleopp.StageName='Prospecting ';
            singleopp.CloseDate=Date.Today()+45;
            singleopp.Amount=1000;
            
            multiopp.add(singleopp);            
        }
        Boolean result=AccountHandler.addStudenttoCohortwithOpportunity('TEST COHORT',multiContact,multiopp);
                        // Test and Evaluate
         
        List<Contact> testcontact = [SELECT Id, Name, accountid, Account.Name FROM Contact];
        List<Opportunity> testopp = [SELECT Id, Name, accountid, Account.Name,StageName, CloseDate, Amount FROM Opportunity];
        List<Account> testAcc = [SELECT id, Name FROM Account LIMIT 1];
        
        System.debug(testAcc);
        System.debug(testcontact);
         System.debug(testopp);
        System.assertEquals(false, result); // contact there is no last name ( Required ) 
        System.assertEquals(0, testAcc.size());
        System.assertEquals(0, testcontact.size());
         System.assertEquals(0, testopp.size());
               
    }        @isTest
    public static void addStudenttoCohortwithOpportunity_TEST3(){  // NEGATIVE BEHAVIOUR
    
          
           // Preapare Data
        
        List<Contact> multiContact = New List<Contact>();
        List<opportunity> multiopp = New List<Opportunity>();
        
        for(Integer x=1;x<=10;x++){
            Contact singleContact= New Contact();
            singleContact.FirstName='APEX ' + x;
           singleContact.LastName='STUDENT ' + x;
            
            multiContact.add(singleContact);            
        }
       for(Integer x=1;x<=10;x++){
            Opportunity singleopp= New Opportunity();
            singleopp.Name='APEX TEST1 ' + x;
            singleopp.StageName='Prospecting ';
            singleopp.CloseDate=Date.Today()+45;
            singleopp.Amount=1000;
            
            multiopp.add(singleopp);            
        }
        
        Boolean result=AccountHandler.addStudenttoCohortwithOpportunity('',multiContact,multiopp);
        
        
        // Test and Evaluate
         
        List<Contact> testcontact = [SELECT Id, Name, accountid, Account.Name FROM Contact];
        List<Opportunity> testopp = [SELECT Id, Name, accountid, Account.Name,StageName, CloseDate, Amount FROM Opportunity]; 
        List<Account> testAcc = [SELECT id, Name FROM Account LIMIT 1];
        
        System.debug(testAcc);
        System.debug(testcontact);
        System.debug(testopp);
        System.assertEquals(false, result);  
        System.assertEquals(0, testAcc.size());
        System.assertEquals(0, testopp.size());
        System.assertEquals(0, testcontact.size());
            }

@isTest
    public static void addStudenttoCohortwithOpportunity_TEST4(){  // NEGATIVE BEHAVIOUR
    
          
           // Preapare Data
        
        List<Contact> multiContact = New List<Contact>();
        List<opportunity> multiopp = New List<Opportunity>();
        
        for(Integer x=1;x<=10;x++){
            Contact singleContact= New Contact();
            singleContact.FirstName='APEX ' + x;
           singleContact.LastName='STUDENT ' + x;
            
            multiContact.add(singleContact);            
        }
       for(Integer x=1;x<=10;x++){
            Opportunity singleopp= New Opportunity();
            singleopp.Name='APEX TEST1 ' + x;
            //singleopp.StageName='Prospecting ';
            singleopp.CloseDate=Date.Today()+45;
            singleopp.Amount=1000;
            
            multiopp.add(singleopp);            
        }
        
        Boolean result=AccountHandler.addStudenttoCohortwithOpportunity('TEST COHORT',multiContact,multiopp);
        
        
        // Test and Evaluate
         
        List<Contact> testcontact = [SELECT Id, Name, accountid, Account.Name FROM Contact];
        List<Opportunity> testopp = [SELECT Id, Name, accountid, Account.Name,StageName, CloseDate, Amount FROM Opportunity]; 
        List<Account> testAcc = [SELECT id, Name FROM Account LIMIT 1];
        
        System.debug(testAcc);
        System.debug(testcontact);
        System.debug(testopp);
        System.assertEquals(false, result);  
        System.assertEquals(0, testAcc.size());
        System.assertEquals(0, testopp.size());
        System.assertEquals(0, testcontact.size());
            }
}