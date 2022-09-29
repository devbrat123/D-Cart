public with sharing class ProductController {
    public ProductController() {

    }

    @AuraEnabled
    public static List<Product__c> getProduct(){
        try {
            List<Product__c> lstOfProduct = [Select Id,Name,Image__c,Price__c,Product_Description__c from Product__c];
            return lstOfProduct;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return lstOfProduct;
    }
}
