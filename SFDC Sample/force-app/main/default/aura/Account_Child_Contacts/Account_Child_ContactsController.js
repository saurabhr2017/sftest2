({
	callContacts : function(component, event, helper) {
		cmp.set('v.columns', [
            {label: 'LastName name', fieldName: 'LastName', type: 'text'},
            {label: 'FirstName', fieldName: 'FirstName', type: 'text'},
            {label: 'Phone', fieldName: 'Phone', type: 'phone'},
            {label: 'Email', fieldName: 'Email', type: 'email'},
            
        ]);
        var action=component.get("c.getContacts");
        var getaccId=event.getParams("accId");
            action.setParams({"accId":getaccId});
            action.setCallback(this,function(response){
            	var state = response.getState();
            	if(state ==="SUCCESS"){
            		var result = repsonse.getReturnValue();
            		component.set("v.data", result);
            		component.set("v.flag", true);
            	}
            })
            $A.enqueueAction(action);
			}
		})