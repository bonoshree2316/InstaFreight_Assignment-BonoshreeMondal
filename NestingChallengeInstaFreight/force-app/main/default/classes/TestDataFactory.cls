/*--------------------------------------------------------------------------------------------------------------------------------
     * @author Original: BMONDAL 
     * @date Original: 19-APR-2022
     * @description: Test Factory class to create mock data. 
---------------------------------------------------------------------------------------------------------------------------------*/
@IsTest(seeAllData = false)
public class TestDataFactory {

	// Create test widgets to be processed in batch- Nested records
    public static List<Widget__c> createWidgetNested(Boolean doInsert,Integer count) {
        List<Widget__c> widgets = new List<Widget__c>();
    	for (Integer i=0; i<count; i++) {     // process each record
          
          Widget__c widget = new Widget__c(
                Name = 'Widget ' + i,
                Value__c = '()'          //Nested Value
            );
           widgets.add(widget);
    	}
        
        if(doInsert){
            insert widgets;
        }
        return widgets;
    } 	
    
	// Create test widgets to be processed in batch- Non-Nested records
    public static List<Widget__c> createWidgetNotNested(Boolean doInsert,Integer count) { 
        List<Widget__c> widgets = new List<Widget__c>();
    	for (Integer i=0; i<count; i++) {     // process each record
          
          Widget__c widget = new Widget__c(
                Name = 'Widget ' + i,
              Value__c = '({)'          //Non-Nested value
            );
           widgets.add(widget);
    	}
        
        if(doInsert){
            insert widgets;
        }
        return widgets;
    } 		
}