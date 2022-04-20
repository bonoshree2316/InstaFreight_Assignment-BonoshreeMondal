# InstaFreight_Assignment-BonoshreeMondal- Post Deployment Steps to follow: 
**Add Tabs for Widget Object to Sales App:**
1. Go To Setup
2. search for 'App Manager' and click on it
3. Search for Sales Lightning App
4. Click on 'Edit' 
5. Go to 'Navigation Items' 
6. Search for 'Widget' in Available Items
7. Add both 'widgets' and 'Create Widget' to Selected Items
8. Click on Save

**Make Tabs 'Default on' on Profiles**
1. Go to 'System Admin' and 'Widget Masters' Profile
2. Search for Tabs
3. From 'Custom Tab Settings' 
4. Make both 'widgets' and 'Create Widget' default on


**Post Deployment steps to follow to schedule the job**
1. Open Developer Console
2. Click on 'Debug'
3. Click on 'Open Execute Anonymous window'
4. Paste the below code
System.schedule('IsNestedProperly', '0 0 * * * ?', new CheckNestedValue_BatchSchedule());
5. From Setup, search for Scheduled Jobs
6. Verify if the job with Name 'IsNestedProperly' is scheduled successfully(This Job will run in every hour).

