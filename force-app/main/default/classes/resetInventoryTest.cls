@isTest
private class resetInventoryTest {
    public static String CRON_EXP = '0 0 0 15 3 ? 2022';
    static testmethod void testScheduledJob() {
        Inventory_Products__c i = new Inventory_Products__c();
        insert i;

        Test.startTest();
        String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP,
            new resetInventory());
        Test.stopTest();
    }
}