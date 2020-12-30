public class AccountRecords {

    @AuraEnabled
    public list<Account> getAccountReccords(){
        List<Account> AccRecords=[SELECT id, Name,
                                  (SELECT firstName, LastName FROM Contacts)
                                  FROM Account];
    	Return accRecords;
    }
}