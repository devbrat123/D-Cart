import { LightningElement, wire } from 'lwc';
import getProduct from '@salesforce/apex/ProductController.getProduct';
export default class ProductList extends LightningElement {

    @wire(getProduct)
    products
};