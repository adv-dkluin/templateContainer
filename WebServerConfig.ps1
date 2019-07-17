Configuration WebServerConfig
{
	Node ("localhost")
	{
		#Install the IIS Role
		 WindowsFeature IIS
        {
            Ensure               = 'Present'
            Name                 = 'Web-Server'
            IncludeAllSubFeature = $true
        }
	}
}