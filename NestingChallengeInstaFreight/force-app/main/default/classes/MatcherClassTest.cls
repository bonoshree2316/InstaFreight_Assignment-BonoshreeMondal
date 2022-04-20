/*--------------------------------------------------------------------------------------------------------------------------------
     * @author Original: BMONDAL 
     * @date Original: 19-APR-2022
     * @description: Test class of MatcherClass
---------------------------------------------------------------------------------------------------------------------------------*/
@isTest
private class MatcherClassTest {   
        
    static testmethod void testTextMatch() {
        Test.startTest();    //Test begins here
        	String str = '{(([acd]))}';
        	Boolean match = MatcherClass.isTextNested(str);
        Test.stopTest();    //End of test
        System.assertEquals(match,true);

	}
    
    static testmethod void testTextUnMatch1() {
        Test.startTest();    //Test begins here
        	String str = '{((([acd]))}';
        	Boolean match = MatcherClass.isTextNested(str);
        Test.stopTest();    //End of test
        System.assertEquals(match,false);

	}
    
    static testmethod void testTextUnMatch2() {
        Test.startTest();    //Test begins here
        	String str = '{(([acd]))}}';
        	Boolean match = MatcherClass.isTextNested(str);
        Test.stopTest();    //End of test
        System.assertEquals(match,false);

	}
}