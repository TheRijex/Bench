@isTest
global class MockHttpResponseGenerator implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest req) {
        // Optionally, only send a mock response for a specific endpoint
        // and method.
        System.assertEquals('https://example.com/example/test', req.getEndpoint());
        System.assertEquals('GET', req.getMethod());
        
        // Create a fake response
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setHeader('access_token', '12345678');
        res.setBody('{"customer": {"first_name": "John","last_name": "Doe","street": "Hauptstraße","street_number": "123","zipcode": "12345","city": "Berlin","coordinate": {"lat": 52.12345,"lng": 13.12345},"email": "john.doe@example.com","phone": "+491234567890","year_of_birth": 1978}}');
        res.setStatusCode(200);
        return res;
    }
}