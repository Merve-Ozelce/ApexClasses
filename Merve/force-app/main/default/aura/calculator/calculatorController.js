({
    calculatorOpenClose: function(component, event, helper) {
        console.log('calculatorOpenClose  çalıştı....');
        
       //  {!v.isCalcOpen}
        //  {!v.buttonText}
   
        var iscalcOpen = component.get("v.isCalcOpen");
        var buttonText = component.get("v.buttonText");
        
        console.log(iscalcOpen);
         console.log(buttonText);
        
        component.set("v.isCalcOpen", !iscalcOpen);
        
        
        
        console.log('-----İşlem Sonrası ------------');
        
        if(iscalcOpen==true){
            component.set("v.buttonText", "SHOW");
        } else {
             component.set("v.buttonText", "HIDE");
        }
        
        
        iscalcOpen = component.get("v.isCalcOpen");
        console.log(iscalcOpen);
        
        buttonText = component.get("v.buttonText");     
         console.log(buttonText);
        
    },  doinit : function(component, event, helper) {
        console.log('doinit çalıştı....');
        
       
        
    },sum : function(component, event, helper) {
        console.log('Toplama işlemi tıklandı....');
        
        var x = component.get("v.xnumber");
        var y = component.get("v.ynumber");
        
        console.log(x);
        console.log(y);
        
        
        var result = Number(x)+Number(y);
        
        console.log(result);
        
        component.set("v.result",result);
        component.set("v.process"," + ");
        
        
    }, sub : function(component, event, helper) {
        console.log('Toplama işlemi tıklandı....');
        
        var x = component.get("v.xnumber");
        var y = component.get("v.ynumber");
        
        console.log(x);
        console.log(y);
        
        
        var result = Number(x)-Number(y);
        
        console.log(result);
        
        component.set("v.result",result);
        component.set("v.process"," - ");
        
    }, mul : function(component, event, helper) { 
        console.log('Toplama işlemi tıklandı....');
        
        var x = component.get("v.xnumber");
        var y = component.get("v.ynumber");
        
        console.log(x);
        console.log(y);
        
        
        var result = Number(x)*Number(y);
        
        console.log(result);
        
        component.set("v.result",result);
        component.set("v.process"," * ");
        
    } , div : function(component, event, helper) {
        console.log('Toplama işlemi tıklandı....');
        
        var x = component.get("v.xnumber");
        var y = component.get("v.ynumber");
        
        console.log(x);
        console.log(y);
        
        
        var result = Number(x)/Number(y);
        
        console.log(result);
        
        component.set("v.result",result);
        component.set("v.process"," / ");
        
    }        
    
    
})