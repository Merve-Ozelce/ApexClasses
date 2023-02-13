@isTest
public class HelloApexTest {
    @isTest
    public static void helloTest1(){
        String actual=HelloApex.msg('test');
        
        System.assertEquals('TEST Clarusway Salesforce Cohort 3',actual);
        
    }
     @isTest
    public static void helloTest2(){
        String actual=HelloApex.msg('test');
        
        System.assertNotEquals('test',actual);
        
    }
    @isTest
    public static void helloTest3(){
        String actual=HelloApex.msg('selam');
        
        System.assertEquals('SELAM Clarusway Salesforce Cohort 3',actual);
        
    }
}