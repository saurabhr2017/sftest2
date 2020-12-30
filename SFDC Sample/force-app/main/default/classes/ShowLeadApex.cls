public class ShowLeadApex {
    @AuraEnabled
    public static list<Lead> getLeadData(){
    	list<Lead> retLeadData=[select id, Name from Lead];
        return retLeadData;
    }
}