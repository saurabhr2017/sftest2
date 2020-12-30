({
	callOpty : function(component, event, helper) {
		cmp.set('v.columns', [
            {label: 'Name name', fieldName: 'Name', type: 'text'},
            {label: 'StageName', fieldName: 'StageName', type: 'text'},
            {label: 'CloseDate', fieldName: 'CloseDate', type: 'date'},
            {label: 'Amount', fieldName: 'Amount', type: 'currency'},
            
        ]);
        var action=component.get("c.getOpty");
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