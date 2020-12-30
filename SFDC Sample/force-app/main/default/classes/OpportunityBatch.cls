global class OpportunityBatch implements Database.Batchable<sObject>{

global Database.QueryLocator start(Database.BatchableContext bc){

	String optyQuery='select id, Name,DeliveryInstallationStatus__c from Opportunity';
	return Database.getQueryLocator(optyQuery);
}
global void execute(Database.BatchableContext bc, List<Opportunity> optyList){
	//List<Opportunity> opList = new List<Opportunity>();	
    for(Opportunity op:optyList){
	    op.DeliveryInstallationStatus__c ='Completed';
       // opList.add(op);
	  }
       update optyList;
}
global void finish(Database.BatchableContext bc){
	system.debug('process finished');

}
}