({
	myAction : function(component, event, helper) {
		var contactRecords = component.get("c.getAccountReccords");
        $A.enqueueAction(contactRecords);
        contactRecords.setCallback(this,function(response){
            //var returnval = response.getReturnValue();
            component.set("v.toContactRecords",response.getReturnValue());
                alert('LIST OF CONTACTS');
           });
	}
})