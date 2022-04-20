/*======================================================================================================================================
*   Author     : BMONDAL
*   Date       : 19-APR-2022
*   Description: A test class created to validate the CheckNestedValue_BatchSchedule class.         
* =====================================================================================================================================  
*/
@istest
public class CheckNestedValue_BatchScheduleTest { 
    public static testMethod void testschedule() {
        Test.startTest();
            CheckNestedValue_BatchSchedule testsche = new CheckNestedValue_BatchSchedule();  //Instantiate the batch class 
            String sch = '0 43 23 * * ?';                     //This test runs a scheduled job at 11:43 PM everyday
            system.schedule('Test status Check', sch, testsche ); //Scheduled the test job
        Test.stopTest();
    }

}