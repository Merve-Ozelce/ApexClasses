({
	changeMsg : function(component, event, helper) {
		console.log('Buton tıklandı.......');
        
        // v.hellomsg
        
        var msg=component.get("v.hellomsg");
        
        console.log(msg);
        
        component.set("v.hellomsg","I'M AURA COMPONENT WHAT CAN I DO FOR YOU?");
        
        msg=component.get("v.hellomsg");
        
        console.log(msg);
        
        
        console.log('----------COMPONENT-------');
        console.log(component);
        
        
	}
})