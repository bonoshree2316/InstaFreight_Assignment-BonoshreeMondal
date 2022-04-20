/*======================================================================================================================================
*   Class Name : CheckNestedValue_Batch
*   Author     : BMONDAL
*   Date       : 19-APR-2022
*   Test Class : CheckNestedValue_BatchTest
*   Description: This class helps to update the Is_Properly_Nested__c field after checking if the Value__c is Properly Nested.        
* =====================================================================================================================================  
*/
global class CheckNestedValue_Batch implements Database.Batchable<SObject> {
    
    global Database.QueryLocator start(Database.BatchableContext bc) {       // collect the batches of records or objects to be passed to execute
        //Return all widget records
        return Database.getQueryLocator('Select id, Value__c, Is_Properly_Nested__c, OwnerId From Widget__c where IsProcessed__c = false');  //WHERE Value__c = \'Bonoshree\'
    }
    
    global void execute(Database.BatchableContext bc, List<sObject> scope) {     // process each batch of records
		// process each batch of records default size is 200
        for (sObject s : scope) {
            Widget__c obj = (Widget__c) s;
            if(!String.isBlank(obj.Value__c) && MatcherClass.isTextNested(obj.Value__c)) {
            	obj.Is_Properly_Nested__c = true;   // Update the Is_Properly_Nested__c field             
        	}
            
            obj.IsProcessed__c = true;
        }
        
        update scope;

    }
    global void finish(Database.BatchableContext bc) {       // execute any post-processing operations      	
        
   }  

}