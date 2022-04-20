/*--------------------------------------------------------------------------------------------------------------------------------
     * @author Original: BMONDAL 
     * @date Original: 19-APR-2022
     * @description: Test class to validate CheckNestedValue_Batch class
---------------------------------------------------------------------------------------------------------------------------------*/
@isTest
private class CheckNestedValue_BatchTest {
    @testSetup static void setup() {
        TestDataFactory.createWidgetNested(true,200);   // Using TestDataFactory to get test data
    }   
        
    static testmethod void testScheduledJob() {
        Test.startTest();    //Test begins here
        	CheckNestedValue_Batch batch = new CheckNestedValue_Batch();
        	Database.executeBatch(batch,200);  // Considering the limit of 200 records to be passed into execute method
        Test.stopTest();    //End of test
		
		// Verify widgets updated
		List<Widget__c> widgets = [select id from Widget__c where Is_Properly_Nested__c = true];
        System.assertEquals(widgets.size(),200);
	}
}