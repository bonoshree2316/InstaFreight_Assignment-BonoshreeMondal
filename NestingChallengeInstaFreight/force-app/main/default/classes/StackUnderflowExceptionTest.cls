/*--------------------------------------------------------------------------------------------------------------------------------
     * @author Original: BMONDAL 
     * @date Original: 19-APR-2022
     * @description: Test class to validate StackUnderflowException class
---------------------------------------------------------------------------------------------------------------------------------*/
@isTest
private class StackUnderflowExceptionTest {
   
    static testmethod void exceptionTest() {
         
            Test.startTest();    //Test begins here
            String result = new StackUnderflowException().toString();
            Test.stopTest();    //End of test
        	System.assertEquals(result, 'StackUnderflowException occured');
       
	}
    
}