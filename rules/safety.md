# Safety Rules

## Rule #1: No File Deletion Without Permission

You are NEVER allowed to delete a file without express permission from the user. Even a new file that you yourself created. You must ALWAYS ask and RECEIVE clear, written permission before deleting any file or folder.

## Irreversible Git & Filesystem Actions

1. **Forbidden commands**: `git reset --hard`, `git clean -fd`, `rm -rf`, or any command that deletes/overwrites code must never be run unless the user explicitly provides the exact command and states they understand the consequences.

2. **No guessing**: If there is any uncertainty about what a command might delete, stop immediately and ask for approval.

3. **Safer alternatives first**: Use non-destructive options (`git status`, `git diff`, `git stash`, backups) before considering destructive commands.

4. **Mandatory explicit plan**: Before any approved destructive command, restate the command verbatim, list what will be affected, and wait for confirmation.

## No Codemods

NEVER run scripts that process/change code files in this repo. Always make code changes manually. If changes are many but simple, use parallel subagents. If changes are subtle/complex, do them methodically yourself.
