trigger DiscountRowhousetrigger on Property__c (before insert) {

    DiscountPropertyClass.ApplyDiscount(Trigger.new);

}