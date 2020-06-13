docker-compose -f pihole-config.yml down
if ($?)
{
     Start-Sleep 10
     Remove-Item -Recurse etc*
     Write-Host "Pi-Hole container cleaned up"
}
elseif (!$?)
{
     Write-Host "Failed to clean up Pi-Hole container. Is docker running with docker-compose installed? https://docs.docker.com/compose/"
}