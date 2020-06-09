public with sharing class ContactsManager {
    @AuraEnabled(Cacheable=true)
    public static List<Contact> getContact(Integer numberOfRecords){
        return[select id,LastName,Phone from Contact LIMIT:numberOfRecords];
    }
}
