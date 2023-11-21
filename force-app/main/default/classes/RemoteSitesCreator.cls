public with sharing class RemoteSitesCreator {

    @future(callout=true)
    public static void createRemoteSite(String fullName, String url) {
        //Metadata Service
        MetadataService.MetadataPort service = new MetadataService.MetadataPort();
        service.SessionHeader = new MetadataService.SessionHeader_element();
        service.SessionHeader.sessionId = UserInfo.getSessionId();

        //Metadata for remote site settings
        MetadataService.RemoteSiteSetting remoteSiteSettings = new MetadataService.RemoteSiteSetting();
        remoteSiteSettings.fullName = fullName;
        remoteSiteSettings.url = url;
        remoteSiteSettings.description = 'Remote site settings created from apex';
        remoteSiteSettings.isActive = true;
        remoteSiteSettings.disableProtocolSecurity = false;
        MetadataService.SaveResult[] results = service.createMetadata(
        new List<MetadataService.Metadata>{ remoteSiteSettings }
        );

        for (MetadataService.SaveResult result : results) {
        if (result.success) {
            //Success
            System.debug(result);
        } else {
            //Failed
            System.debug(result.errors[0].message);
        }
        }
    }
}