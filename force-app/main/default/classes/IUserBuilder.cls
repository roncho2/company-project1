/**
 * Created by Roncho on 12/2/2023.
 */

public interface IUserBuilder {
    void setFirstName();
    void setLastName();
    void setEmail();
    void setProfile();
    void setEmailEncodingKey();
    void setAlias();
    void setLanguageKey();
    void setLocalSIDKey();
    void setTimeZone();
    void setPermSet();
    User getUser();
    void setUsername();

}