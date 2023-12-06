/**
 * Created by Roncho on 12/5/2023.
 */
@IsTest
public with sharing class UserBuilder_Tests {


    @IsTest
    static void itshouldUpdate (){
        User user = new UserDirector().build(new UserBuilder.Admin());
        System.runAs(user){
            Account account = new Account(Name = 'Test Account' , Admin_Only__c = true);
            System.assert(Schema.SObjectType.Account.fields.Admin_Only__c.isAccessible() == true,
                    'This field should be accessible');
        }

    }
    @IsTest
    static void itShouldNotUpdate(){
        User user = new UserDirector().build(new UserBuilder.Admin());
        System.runAs(user){
            Account account = new Account(Name = 'Test Account' , Admin_Only__c = true);
            System.assert(Schema.SObjectType.Account.fields.Admin_Only__c.isAccessible()== true,
                    'This field should  be accessible');
        }
    }


}