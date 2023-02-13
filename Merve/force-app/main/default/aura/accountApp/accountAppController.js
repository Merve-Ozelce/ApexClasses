({
	accountcreateClientController : function(component, event, helper) {
		var singleaccount = component.get("v.singleAcc");
        console.log(singleaccount.Name);
        console.log(singleaccount.Phone);
        console.log(singleaccount.Website);
        //var server =component.get("c.create");
	}
})