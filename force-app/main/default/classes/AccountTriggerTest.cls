@isTest
public with sharing class AccountTriggerTest {

    @isTest
    static void AccountTriggerHandlerTest(){
        Test.startTest();
        insert new Account(Name = 'Different');
        Test.stopTest();
        Account newAccount = [SELECT Id, Name FROM Account LIMIT 1];
        System.assert(newAccount.Name == 'Test');
    }
}
