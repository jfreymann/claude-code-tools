# Quick Reference

## Workflow

```
New Project:    /bootstrap
Start Session:  claude → /whats-next or check changelog
Work:           /create-plan → @agents → build
End Session:    /sync (ALWAYS)
```

## Essential Commands

```
/bootstrap      Initialize project with docs
/sync           Capture session to docs (END OF SESSION)
/quick-sync     Lightweight changelog update
/context        Load relevant docs for task
/whats-next     What to work on next
/create-plan    Plan complex work
/debug          Systematic debugging
```

## Agents

```
@rails-expert       @python-expert      @go-expert
@react-expert       @typescript-expert  @bash-expert
@postgres-expert    @sql-expert         @tailwind-expert
@puppet-expert      @code-reviewer      @git-workflow-manager
```

## Project Docs

```
docs/architecture.md      System design
docs/decisions.md         ADRs (why)
docs/troubleshooting.md   Issues & solutions
docs/changelog.md         Session history ← KEY
docs/roadmap.md           Planning
docs/patterns.md          Conventions
```

## /sync Captures

```
Decisions         → docs/decisions.md
Bugs fixed        → docs/troubleshooting.md
Patterns          → docs/patterns.md
Architecture      → docs/architecture.md
Progress          → docs/changelog.md + roadmap.md
```

## Install

```bash
git clone https://github.com/jfreymann/claude-code-tools.git ~/.claude-code-tools
~/.claude-code-tools/install.sh
```
