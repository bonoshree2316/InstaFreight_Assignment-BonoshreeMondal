/*======================================================================================================================================
*   Class Name : CheckNestedValue_BatchSchedule
*   Author     : BMONDAL
*   Date       : 19-APR-2022
*   Test Class : CheckNestedValue_BatchScheduleTest
*   Description: This class is used to schedule the batch class CheckNestedValue_Batch.       
* =====================================================================================================================================  
*/
global class CheckNestedValue_BatchSchedule implements Schedulable{
    //This Scheduler class should run daily at a specific interval of time. This can be scheduled once from Developer Console.
    global void execute(System.SchedulableContext sc){
        CheckNestedValue_Batch backupsch = new CheckNestedValue_Batch();
        database.executeBatch(backupsch);
    }
}