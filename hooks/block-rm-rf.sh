#!/bin/bash
# Block rm -rf commands
# Reads JSON from stdin, checks if command contains rm -rf

# Read stdin
INPUT=$(cat)

# Extract command using jq
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // ""')

# Check for rm -rf patterns (handles various flag orderings)
if echo "$COMMAND" | grep -qE 'rm\s+(-[a-zA-Z]*r[a-zA-Z]*\s+-[a-zA-Z]*f|-[a-zA-Z]*f[a-zA-Z]*\s+-[a-zA-Z]*r|-rf|-fr)'; then
    # Output JSON to block the operation
    cat << 'EOF'
{
  "hookSpecificOutput": {
    "hookEventName": "PreToolUse",
    "permissionDecision": "deny"
  },
  "systemMessage": "🛑 **rm -rf command blocked!**\n\nThis command can permanently delete files without confirmation.\n\n**Alternatives:**\n- Use `rm -ri` for interactive deletion\n- Move to trash: `gio trash <path>`\n- List first: `find <path> -type f`\n\nIf you really need this, run it manually in a separate terminal."
}
EOF
    exit 0
fi

# Allow operation (empty JSON)
echo '{}'
