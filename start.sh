compose_files=("portainer/docker-compose.yml" "dockerproxy/docker-compose.yml" "authelia/docker-compose.yml" "bazarr/docker-compose.yml" "bazarranime/docker-compose.yml" "cloudflare-ddns/docker-compose.yml" "code-server/docker-compose.yml" "crowdsec/docker-compose.yml" "flaresolverr/docker-compose.yml" "homarr/docker-compose.yml" "jellyfin/docker-compose.yml" "jellyseerr/docker-compose.yml" "notifiarr/docker-compose.yml" "prowlarr/docker-compose.yml" "qbittorrent/docker-compose.yml" "radarr/docker-compose.yml" "radarranime/docker-compose.yml" "sonarr/docker-compose.yml" "sonarranime/docker-compose.yml" "swag/docker-compose.yml" "wizarr/docker-compose.yml" "yacht/docker-compose.yml" "guacamole/docker-compose.yml" "wireguard/docker-compose.yml" "watchtower/docker-compose.yml" "prometheus/docker-compose.yml" "firefly_iii/docker-compose.yml")

for compose in ${compose_files[@]}; do
  infisical run -- docker compose -f $compose up -d
done
