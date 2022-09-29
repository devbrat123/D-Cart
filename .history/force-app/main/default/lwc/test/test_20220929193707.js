import { LightningElement, api, wire, track } from 'lwc';

export default class Test extends LightningElement {
    @api githubPull;
    @track lwcProject;
}