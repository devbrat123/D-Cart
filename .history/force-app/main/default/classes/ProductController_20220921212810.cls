public with sharing class ProductController {
    public ProductController() {

    }

    @AuraEnabled(cacheable=true)
    public static List<Product__c> getProduct(){
        List<Product__c> lstOfProduct = new List<Product__c>();
        try {
             lstOfProduct = [Select Id,Name,Image__c,Price__c,Product_Description__c from Product__c];
            //return lstOfProduct;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return lstOfProduct;
    }
}
