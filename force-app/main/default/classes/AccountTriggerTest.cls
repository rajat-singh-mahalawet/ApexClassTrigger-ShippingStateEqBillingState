@isTest
public class AccountTriggerTest {
    
    @isTest static void createBulkAccountTest(){
        
        List<Account> acnts = new List<Account>();
        for(Integer i = 0; i < 200; i++){
            Account a = new Account();
            a.Name = 'Test' + i;
            a.BillingState = 'CA';
            
            acnts.add(a);
            
        }
        
        Test.startTest();
        insert acnts;
        Test.stopTest();
        
        List<Account> ac_verify = [select Id, ShippingState from Account];
        system.assertEquals(200, ac_verify.size());
        for (Account a : ac_verify){
            system.assertEquals('CA', a.ShippingState);
        }
        
    }

}