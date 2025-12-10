# Claude Code Configuration

Personal configuration and customizations for [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

## Structure

```
.claude/
├── agents/          # Custom agent definitions
├── commands/        # Custom slash commands
├── hooks/           # Automation hooks (pre/post tool execution)
├── plugins/         # Installed plugins (marketplace)
└── skills/          # Custom skills
```

## Agents

Custom agents that can be invoked via the Task tool:

| Agent | Description |
|-------|-------------|
| `code-reviewer` | Reviews code for quality, security, and maintainability |
| `debugger` | Debugging specialist for errors and unexpected behavior |
| `test-runner` | Runs tests and fixes failures |

## Commands

Custom slash commands:

| Command | Description |
|---------|-------------|
| `/diary` | Create a structured diary entry from the current session |
| `/reflect` | Analyze diary entries to identify patterns and propose CLAUDE.md updates |

## Hooks

Safety hooks that run before/after tool execution:

- **block-rm-rf.sh** - Blocks dangerous recursive delete commands
- **pre-compact.sh** - Runs before context compaction
- **hookify.\*** - Auto-generated safety rules (credentials, permissions, debug statements, etc.)

## Installation

These configurations are meant for personal use. To use them:

1. Clone this repo to `~/.claude/`
2. Install any plugins via Claude Code's plugin system
3. Hooks are automatically loaded from the `hooks/` directory

## Notes

- Sensitive files (credentials, settings, history) are excluded via `.gitignore`
- Plugin cache and state files are not tracked
- Memory and project-specific data remain local only
