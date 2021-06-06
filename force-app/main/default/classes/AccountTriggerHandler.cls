public with sharing class AccountTriggerHandler {
    
    public static void CreateAccounts(List<Account> acnts){        
        
        for (Account a : acnts){
            
            if (a.ShippingState != a.BillingState){
                
                a.ShippingState = a.BillingState;
            }                
            
        }        
        
        }

}