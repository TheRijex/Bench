@RestResource(urlMapping='/SelfmadeLeadGeneration/*')
global without sharing class SelfmadeLeadGeneration {

    @HttpPost
    global static void generateLead() {
        Selfmade_Lead_Generation_Config__c config = Selfmade_Lead_Generation_Config__c.getInstance(
            [SELECT Id FROM Profile WHERE Name = 'SelfmadeLeadGeneration Profile' LIMIT 1].Id
        );

        if (config == NULL || !config.Process_Allowed__c ||
        (RestContext.request.headers.get('access_token') != config.Access_Token__c)) return;

        SelfmadeLead lead = new SelfmadeLead();

        try {
            lead = (SelfmadeLead) JSON.deserialize(
                RestContext.request.requestBody.toString(),
                SelfmadeLead.class
            );
        } catch (JSONException exc) {
            System.debug(exc.getMessage());
        }

        if (lead == NULL || lead.customer == NULL || String.isBlank(lead.customer.last_name)) return;

        Lead generatedLead          = new Lead();
        generatedLead.FirstName     = lead.customer.first_name;
        generatedLead.LastName      = lead.customer.last_name;
        generatedLead.Email         = lead.customer.email;
        generatedLead.Phone         = lead.customer.phone;
        generatedLead.City          = lead.customer.city;
        generatedLead.Street        = lead.customer.street + lead.customer.street_number;
        generatedLead.PostalCode    = lead.customer.zipcode;
        generatedLead.Longitude     = lead.customer.coordinate.lng;
        generatedLead.Latitude      = lead.customer.coordinate.lat;
        generatedLead.Company       = 'TEST';

        try {
            upsert generatedLead Email;
        } catch (DmlException exc) {
            System.debug(exc.getMessage());
        }
    }
}