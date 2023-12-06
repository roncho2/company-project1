trigger AccountEmailer on Account (before insert) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        System.debug('I am in AccountEmailer before insert conext');
    }

}