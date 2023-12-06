/**
 * Created by Roncho on 12/2/2023.
 */

public with sharing class UserBuilder {

    public with sharing class Admin implements  IUserBuilder {
        User user;

        public Admin(){
            this.user = new User();

        }

        public void setFirstName() {
            user.FirstName = 'Test';
        }

        public void setLastName() {
            user.LastName = 'TestAdmin';
        }

        public void setEmail() {
            user.Email = 'fake@test.com';
        }

        public void setProfile() {
            Profile profile = [SELECT Id FROM Profile WHERE Name = 'System Administrator'];
            user.ProfileId = profile.Id;

        }

        public void setEmailEncodingKey(){
            user.EmailEncodingKey = 'UTF-8';
        }

        public void setAlias() {
            user.Alias = 'testAdm';
        }

        public void setLanguageKey() {
            user.LanguageLocaleKey = 'en_US';
        }

        public void setLocalSIDKey() {
            user.LocaleSidKey = 'en_US';
        }

        public void setTimeZone() {
            user.TimeZoneSidKey = 'America/Los_Angeles';
        }

        public void setPermSet() {
        }


        public void setUsername() {
            user.Username = 'testAdminUser@' + String.valueOf(Crypto.getRandomInteger())+ '.com';
        }
        public User getUser() {
            return null;
        }
    }

    public with sharing class standard implements  IUserBuilder {

        public User user{get; private set;}

        public standard (){
            this.user = new User();
        }

        public void setFirstName() {
            user.FirstName = 'Test';
        }

        public void setLastName() {
            user.LastName = 'Standard User';
        }

        public void setEmail() {
            user.Email = 'fake@fake.com';
        }

        public void setProfile() {
            Profile profile = [SELECT Id, Name FROM Profile WHERE Name = 'StandardUser'];
            user.ProfileId = profile.Id;
        }

        public void setEmailEncodingKey() {
            user.EmailEncodingKey = 'UTF-8';
        }

        public void setAlias() {
            user.Alias = 'standard';
        }

        public void setLanguageKey() {
            user.LanguageLocaleKey = 'en_US';
        }

        public void setLocalSIDKey() {
            user.LocaleSidKey = 'en_US';
        }

        public void setTimeZone() {
            user.TimeZoneSidKey = 'America/Los_Angeles';
        }

        public void setPermSet() {
        }

        public void setUsername() {
            user.Username = 'testStandardUser@' + String.valueOf(Crypto.getRandomInteger()) + '.com';
        }

        public User getUser() {
            return this.user;
        }
    }


}