/*======================================================================================================================================
*   Class Name : WidgetUpdateController
*   Author     : BMONDAL
*   Date       : 19-APR-2022
*   Test Class : WidgetUpdateControllerTest
*   Description:     
* =====================================================================================================================================  
*/
public with sharing class WidgetUpdateController {
  
    //@AuraEnabled annotation enables Lightning to access below apex method
    @AuraEnabled
    public static Boolean insertWidget(Widget__c widget) {
        Id currentUserProfileId = UserInfo.getProfileId();
        String profileName = [SELECT Name FROM Profile WHERE Id =: currentUserProfileId].Name;   // Get Profile Name 
        boolean success;
        
        // Condition to allow 'System Admin' and 'Widget Master' Profile users to save record even if value is not nested
        if(MatcherClass.isTextNested(widget.Value__c)){
            insert widget;
            success = true;
        }
        else{
            success = false;
        }
        return success;
    }
}