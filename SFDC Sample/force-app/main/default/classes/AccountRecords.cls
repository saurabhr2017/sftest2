public class AccountRecords {
    //comment added to test
    //Comment added to develop branch
    // comment three added at remote repo at gitTTTTTT
    @AuraEnabled
    public list<Account> getAccountReccords(){
        List<Account> AccRecords=[SELECT id, Name,
                                  (SELECT firstName, LastName FROM Contacts)
                                  FROM Account];
    	Return accRecords;
    }
}
