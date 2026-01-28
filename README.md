# Octopus Terraria Server

Terraria 1.4.5 dedicated server for Octopus Technology.

## Configuration

### Environment Variables
- `WORLD_NAME`: Name of the Terraria world (default: "Octopus World")
- `MAX_PLAYERS`: Maximum players (default: 16)
- `PORT`: Server port (default: 7777)
- `PASSWORD`: Server password (leave empty for no password)
- `DIFFICULTY`: 0=Normal, 1=Expert, 2=Master, 3=Journey
- `WORLD_SIZE`: 1=Small, 2=Medium, 3=Large
- `MOTD`: Message of the day

## Quick Start

1. **Deploy via Portainer**:
   - Go to Stacks → Add stack
   - Name it "octopus-terraria"
   - Use Git repository: `https://github.com/anonymous14386/octopus-terraria.git`
   - Deploy

2. **Connect**: `your-server-ip:7777`

## Network Access

### Direct IP Access
- Connect via: `your-server-ip:7777`
- Port 7777 is exposed via docker-compose

### Cloudflare Setup (after IP works)
1. Add A record: `terraria.octopustechnology.net` → your server IP
2. **Important**: Set proxy to "DNS only" (gray cloud), not proxied
   - Cloudflare doesn't support UDP game traffic through proxy
3. Connect via: `terraria.octopustechnology.net:7777`

## World Management

Worlds are stored in `./world/` directory. They persist across container restarts.

## Logs

View logs in Portainer or via:
```bash
docker logs -f terraria-server
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
