({
    // handleClick to handle the saving records
	handleClick: function(component, event, helper) {
        	var param=component.get("v.widget");
            var action = component.get("c.insertWidget");
            
            action.setParams({ "widget" : param });
            action.setCallback(this, function(response){
                var state = response.getState();
    
                if(state == "SUCCESS"){
                    var res1 = response.getReturnValue();
                    if(res1){
                        var toastEvent = $A.get("e.force:showToast");  //on success show toast message
                        toastEvent.setParams({
                            "title": $A.get("$Label.c.Success"),
                            "message": $A.get("$Label.c.RecordSaved"),
                            "type": "success"
                            });
                            toastEvent.fire();
                        $A.get("e.force:refreshView").fire();
                    }
                    else{
                        var toastEvent = $A.get("e.force:showToast");  //on error show error toast message
                        toastEvent.setParams({
                            "title": $A.get("$Label.c.Error"),
                            "message": $A.get("$Label.c.RecordNotSaved"),
                            "type": "error"
                            });
                            toastEvent.fire();
                    }
                }
            }); 
            $A.enqueueAction(action);

    },
    
})