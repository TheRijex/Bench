public without sharing class ImgUploader {

    public static blob testData {get; set;} 
    
    public static void uploadImg(String imageUrl , Id attachedObject){
        try{        
            HttpRequest req = new HttpRequest();

            req.setEndpoint(imageUrl);
            req.setMethod('GET');

            Http http = new Http();
       
            HTTPResponse res = http.send(req);
            Blob imageblob = res.getBodyAsBlob();
            String image = EncodingUtil.Base64Encode(imageblob);
            System.debug(EncodingUtil.Base64Encode(imageblob));
            
            ContentVersion cv = new ContentVersion();
            cv.ContentLocation  ='S';
            cv.Title            = 'Test Image'; 
            cv.PathOnClient     ='TestImg.jpg'; 
            cv.VersionData      = imageblob;
            insert cv;
    
            String Verid =[SELECT ContentDocumentid FROM ContentVersion WHERE id =: cv.id].ContentDocumentid;
            ContentDocumentLink link = new ContentDocumentLink();
            link.ContentDocumentid   = verid;
            link.linkedEntityId      = attachedObject;
            link.shareType           = 'I';
            link.visibility          = 'ALLUsers';
            // insert link;
            
        } catch(exception e){
            System.debug(e.getmessage());
        }         
    }
}