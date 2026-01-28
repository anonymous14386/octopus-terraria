# Octopus Terraria Server

Terraria 1.4.5 dedicated server for Octopus Technology.

## Setup in Portainer

1. **Deploy Stack**:
   - Stacks → Add stack → "octopus-terraria"
   - Paste the docker-compose.yml content
   - Deploy

2. **Initial World Creation** (one-time):
   - Go to Containers → octopus_terraria → Console
   - Select `/bin/sh` and click "Connect"
   - Type `n` (new world)
   - Choose world size: `2` (medium)
   - Choose difficulty: `0` (classic), `1` (expert), or `2` (master)
   - Enter world name: `Octopus World`
   - Enter seed (or press Enter to skip)
   - Select the world number (usually `1`)
   - Set max players: `16`
   - Set port: `7777` (press Enter for default)
   - Automatically forward port: `n`
   - Set password (or press Enter for no password)

3. **Done!** The world persists in the Docker volume. Future restarts will load it automatically.

## Connect

- Direct IP: `your-server-ip:7777`
- Domain: `terraria.octopustechnology.net:7777` (after DNS setup)

## Connect
## Cloudflare DNS Setup

1. Add A record: `terraria.octopustechnology.net` → your server IP
2. **Important**: Set to "DNS only" (gray cloud) - Cloudflare can't proxy UDP game traffic

## Server Managementerver
```

## Server Commands

Attach to server console:
```bash
docker attach terraria-server
```the `terraria_world` Docker volume and

Detach: `Ctrl+P, Ctrl+Q` (don't use Ctrl+C, it stops the server)

Common commands:
- `help` - List all commands
- `playing` - List connected players
- `kick <player>` - Kick a player
- `ban <player>` - Ban a player
- `save` - Save world
- `exit` - Stop server
## Server Management

**View Logs**: Portainer → Containers → octopus_terraria → Logs

**Access Console**:
```bash
docker attach octopus_terraria