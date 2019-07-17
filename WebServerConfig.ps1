Configuration WebServerConfig
{
	Node ("localhost")
	{
		WindowsFeature IIS
        	{
            		Ensure               = 'Present'
            		Name                 = 'Web-Server'
            		IncludeAllSubFeature = $true
        	}
	}
}