/**
 * Created by Roncho on 12/2/2023.
 */

public with sharing class UserDirector {

    IUserBuilder userBuilder;
    public User build(IUserBuilder userBuilder){
        this.userBuilder = userBuilder;
        userBuilder.setFirstName();
        userBuilder.setLastName();
        userBuilder.setEmail();
        userBuilder.setAlias();
        userBuilder.setEmailEncodingKey();
        userBuilder.setLocalSIDKey();
        userBuilder.setProfile();
        userBuilder.setTimeZone();
        userBuilder.setPermSet();
        userBuilder.setLanguageKey();
        userBuilder.setUsername();
        return userBuilder.getUser();

    }



}