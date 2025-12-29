# TurtleData

Turtle WoW addon for managing and querying game database information. Provides tools to access and display NPC, quest, item, and world data through simple slash commands.

## Install (manual)
1. Copy the `TurtleData` folder into your TurtleWoW/Interface/AddOns/ directory
2. Ensure structure is `AddOns/TurtleData/TurtleData.toc`
3. Restart the game or `/reload`

## Commands
- `/tdata help`     — list available commands
- `/tdata query`    — search database by type and criteria
- `/tdata info`     — display detailed information about game entities

## Features
- Query NPCs, quests, items, and world objects
- Browse database tables efficiently
- Display formatted results in-game

## Notes
- Interface set to 11200 (Vanilla/Turtle WoW)
- Uses global namespace `TurtleData`
- Requires database tables to be populated

## Development

### Branch Names
**No code changes are needed if you rename a branch.** This repository does not contain:
- Hardcoded branch references in code
- CI/CD workflows that depend on specific branch names
- Build scripts with branch-specific logic
- Documentation links pointing to specific branches

You can safely rename any branch without modifying the codebase.
