public with sharing class AccountTriggerHandler {
    
    public static void CreateAccounts(List<Account> account_list){        
        
        for (Account a : account_list){
            
            if (a.ShippingState != a.BillingState){
                
                a.ShippingState = a.BillingState;
            }                
            
        }        
        
    }

}