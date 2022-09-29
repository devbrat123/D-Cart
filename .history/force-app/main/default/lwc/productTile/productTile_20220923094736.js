import { LightningElement, api } from 'lwc';

export default class ProductTile extends LightningElement {


    _product;
    /** Product__c to display. */
    @api
    get productsData() {
        return this._product;
    }
    set productsData(value) {
        console.log('value @@@' + JSON.stringify(value));
        this._product = value;
        this.pictureUrl = value.Image__c;
        this.name = value.Name;
        this.msrp = value.Price__c;
        this.description = value.Product_Description__c;
    }

    /** Product__c field values to display. */
    pictureUrl;
    name;
    msrp;
    description;
}