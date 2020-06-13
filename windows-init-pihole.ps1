Write-Host "Setting up Pi-Hole docker container"
docker-compose -f pihole-config.yml up -d
if (!$?)
{
     Write-Host "Docker init failed. Is Docker running with docker-compose installed? https://docs.docker.com/compose/"
}
elseif ($?)
{
     Start-Sleep 10
     Write-Host "Pi-Hole live at: http://$(hostname)/admin"
}
