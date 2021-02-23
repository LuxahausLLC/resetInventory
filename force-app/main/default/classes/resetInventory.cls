global class resetInventory implements Schedulable {
    global void execute(SchedulableContext ctx) {
        List<Inventory_Products__c> invProducts = [select id, name, Verified__c from Inventory_Products__c];
        for (Inventory_Products__c current : invProducts ) {
            current.Verified__c = false;
            update current;
        }
    }
}