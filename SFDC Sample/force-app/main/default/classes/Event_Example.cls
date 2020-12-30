public class Event_Example {
	@AuraEnabled
    public static String getAccounts(String accName, String accIndustry){
        String accId;
        List<Account>accounts = [select Name,Phone,Industry,Rating from Account where name=:accName and industry=:accIndustry];
        if(accounts.size()==0){
        	accId='Error';
        }else{
            accId=accounts[0].Id;
       		}  
        return accId;  
    }
    @AuraEnabled
    public static List<Contact> getContacts(String accId){
        List<Contact>contacts = [select id, lastName, firstName, Phone, Email from Contact where AccountID=:accId];
        return contacts;
	}
    @AuraEnabled
    public static List<Opportunity> getOpty(String accId){
        List<Opportunity>opty = [select id, Name, CloseDate, StageName, Amount from Opportunity where AccountID=:accId];
        return opty;
	}
}