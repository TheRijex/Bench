@isTest
private with sharing class TestSelfmadeLeadGeneration {
    @isTest static void testCallout() {
        // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());

        Test.startTest();
            SelfmadeLeadGeneration.generateLead();
        Test.stopTest();

    }
}