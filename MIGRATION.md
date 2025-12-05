# Migrating Your Existing Repo

If you already have `github.com/jfreymann/claude-code-tools` with agents, commands, and skills, here's how to add the bootstrap workflow.

## What's New

These files add the project documentation and session continuity workflow:

```
commands/
├── bootstrap.md      # NEW - Initialize projects with docs structure
├── quick-sync.md     # NEW - Lightweight session sync
# sync.md and context.md are created per-project by /bootstrap
```

## Migration Steps

### 1. Add New Commands

Copy these files to your existing `commands/` directory:

- `commands/bootstrap.md`
- `commands/quick-sync.md`

### 2. Update README

Replace or merge with the new README.md that documents:
- The bootstrap workflow
- The /sync discipline
- Full command/agent reference

### 3. Add Install Scripts

Copy these to your repo root:
- `install.sh`
- `uninstall.sh`

### 4. Commit

```bash
git add -A
git commit -m "Add bootstrap workflow for session continuity"
git push
```

## That's It

Your existing agents, commands, and skills work exactly as before. The bootstrap workflow is additive.

## Per-Project Files

Note that `/sync` and `/context` commands are created **per-project** by `/bootstrap`, not globally. This is intentional - they're project-specific.

When you run `/bootstrap` in a new project, it creates:
```
project/
├── claude.md
├── docs/
│   └── [documentation files]
└── .claude/commands/
    ├── sync.md       # Project-specific
    └── context.md    # Project-specific
```
