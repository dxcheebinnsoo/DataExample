public with sharing class AccountTriggerHandler {
    public static void setAccountName(List<Account> newAccounts) {
        for(Account newAccount : newAccounts){
            System.debug('Before Name:' + newAccount.Name);
            newAccount.Name = 'Test';
            System.debug('After Name:' + newAccount.Name);
        }
        
    }
}
