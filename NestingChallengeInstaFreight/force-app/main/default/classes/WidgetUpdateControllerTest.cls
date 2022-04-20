/*--------------------------------------------------------------------------------------------------------------------------------
     * @author Original: BMONDAL 
     * @date Original: 19-APR-2022
     * @description: Test class to validate WidgetUpdateController class
---------------------------------------------------------------------------------------------------------------------------------*/
@isTest
private class WidgetUpdateControllerTest {
    // setup the data
    @testSetup static void setup() {
        Profile p = [SELECT Id FROM Profile WHERE Name='Standard User']; 
        User u = new User(Alias = 'standt', Email='standarduser@testorg.com', 
            EmailEncodingKey='UTF-8', LastName='Testing', LanguageLocaleKey='en_US', 
            LocaleSidKey='en_US', ProfileId = p.Id, 
            TimeZoneSidKey='America/Los_Angeles', UserName='standarduser@testorg.com');
        insert u;
    }
    
    static testmethod void insertWidgetNestedTest() {
        User u = [select id from User where Email='standarduser@testorg.com'];
        Boolean result;
        System.runAs(u) {   
            //Create a widget
            Test.startTest();    //Test begins here
                 result = WidgetUpdateController.insertWidget(TestDataFactory.createWidgetNested(false,1).get(0));
            Test.stopTest();    //End of test
        }
        System.assertEquals(result,true);
	}
    
    static testmethod void insertWidgetNotNestedTest() {
        User u = [select id from User where Email='standarduser@testorg.com'];
        Boolean result;
        System.runAs(u) {
            //Create a widget
            Test.startTest();    //Test begins here
                result = WidgetUpdateController.insertWidget(TestDataFactory.createWidgetNotNested(false,1).get(0));
            Test.stopTest();    //End of test
        }
        System.assertEquals(result,false);
	}
}