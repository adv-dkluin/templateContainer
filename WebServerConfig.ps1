Configuration WebServerConfig
{
    # The Node statement specifies which targets this configuration will be applied to.
    Node ("localhost") {

        # The first resource block ensures that the Web-Server (IIS) feature is enabled.
        WindowsFeature WebServer {
            Ensure = "Present"
            Name   = "Web-Server"
	    IncludeAllSubFeature = $true
        }
    }
}
