# Claude Code Tools

A complete toolkit for Claude Code: specialized agents, productivity commands, skills, and a project bootstrap system for session continuity.

**Clone → Install → Build.** One command setup, consistent workflow across all your projects.

## Quick Start

```bash
# Clone
git clone https://github.com/jfreymann/claude-code-tools.git ~/.claude-code-tools

# Install
~/.claude-code-tools/install.sh

# Use
cd your-project
claude
/bootstrap
```

That's it. You now have 15+ specialized agents, 20+ commands, and a documentation system that preserves context across sessions.

---

## Installation

### One-Line Install

```bash
git clone https://github.com/jfreymann/claude-code-tools.git ~/.claude-code-tools && ~/.claude-code-tools/install.sh
```

### Options

```bash
./install.sh --link    # Symlink (recommended) - auto-updates with git pull
./install.sh --copy    # Copy files - static installation
./install.sh --all     # No prompts, install everything
```

### Updating

```bash
cd ~/.claude-code-tools && git pull
# If using --link, you're done
# If using --copy, run ./install.sh --copy again
```

### Uninstalling

```bash
rm -rf ~/.claude/{agents,commands,skills}
rm -rf ~/.claude-code-tools
```

---

## The Bootstrap Workflow

The key to this toolkit is the `/bootstrap` command and the `/sync` discipline.

### New Project Setup

```bash
mkdir my-project && cd my-project
claude
/bootstrap
```

Bootstrap creates:
```
my-project/
├── claude.md                 # Project identity, agent references
├── docs/
│   ├── architecture.md       # System design
│   ├── decisions.md          # ADRs (why you chose things)
│   ├── troubleshooting.md    # Known issues & solutions
│   ├── changelog.md          # Session history ← KEY FOR CONTINUITY
│   ├── roadmap.md            # Planning & priorities
│   └── patterns.md           # Code conventions
└── .claude/commands/
    ├── sync.md               # Update docs after work
    └── context.md            # Load relevant docs
```

### Daily Workflow

```
Start session:
  claude                      # claude.md auto-loads
  /whats-next                 # or check docs/changelog.md

Work:
  /create-plan               # Design complex features
  @rails-expert [task]       # Delegate to specialists
  /debug                     # When stuck

End session:
  /sync                      # ALWAYS RUN THIS
```

**The `/sync` habit is everything.** It captures decisions, solutions, and progress so your next session has full context.

---

## Agents

Specialized experts you can delegate to. Use with `@agent-name [request]`.

### Language & Framework Experts

| Agent | Use For |
|-------|---------|
| `@bash-expert` | Shell scripts, CI/CD, deployment automation |
| `@go-expert` | Go development, concurrency, performance |
| `@python-expert` | Python 3.11+, async, type safety, data science |
| `@rails-expert` | Ruby on Rails applications |
| `@react-expert` | React components, hooks, state management |
| `@typescript-expert` | TypeScript, advanced types, strict mode |

### Database & Data

| Agent | Use For |
|-------|---------|
| `@postgres-expert` | PostgreSQL optimization, schema design, tuning |
| `@sql-expert` | Complex queries, optimization, schema design |

### DevOps & Infrastructure

| Agent | Use For |
|-------|---------|
| `@git-workflow-manager` | Commits, branches, conflict resolution, pushing |
| `@puppet-expert` | Puppet manifests, roles/profiles, infrastructure as code |

### Styling

| Agent | Use For |
|-------|---------|
| `@tailwind-expert` | Tailwind CSS, responsive design, optimization |

### Development Tools

| Agent | Use For |
|-------|---------|
| `@changelog-generator` | Release notes from commits, semantic versioning |
| `@code-reviewer` | Code review, security analysis, quality checks |
| `@prompt-engineer` | LLM prompt optimization, token reduction |

### Auditing

| Agent | Use For |
|-------|---------|
| `@skill-auditor` | Audit SKILL.md files |
| `@slash-command-auditor` | Audit slash commands |
| `@subagent-auditor` | Audit agent configurations |

### Example Usage

```
@rails-expert This controller has N+1 queries, help me optimize

@postgres-expert Review this schema for a multi-tenant SaaS app

@code-reviewer Check this PR for security issues before merge

@git-workflow-manager Push these changes with a good commit message
```

---

## Commands

### Project Lifecycle

| Command | Purpose |
|---------|---------|
| `/bootstrap` | Initialize new project with docs structure |
| `/sync` | Update docs with session work (run at end of every session) |
| `/quick-sync` | Lightweight changelog-only sync |
| `/context` | Load only docs relevant to current task |

### Planning & Tasks

| Command | Purpose |
|---------|---------|
| `/create-plan` | Create hierarchical project plan |
| `/run-plan` | Execute a PLAN.md file |
| `/whats-next` | Analyze context, suggest next action |
| `/add-to-todos` | Add item to TO-DOS.md |
| `/check-todos` | Review and select todo to work on |

### Creation

| Command | Purpose |
|---------|---------|
| `/create-slash-command` | Create new slash command |
| `/create-agent-skill` | Create or edit skills |
| `/create-subagent` | Create specialized agent |
| `/create-hook` | Create event-based automation |
| `/create-prompt` | Create executable prompt |
| `/create-meta-prompt` | Create Claude-to-Claude pipeline prompt |

### Quality & Debugging

| Command | Purpose |
|---------|---------|
| `/debug` | Systematic debugging methodology |
| `/audit-skill` | Audit skill for best practices |
| `/audit-slash-command` | Audit command configuration |
| `/audit-subagent` | Audit agent effectiveness |
| `/heal-skill` | Apply corrections to skill docs |

### Mental Models (`/consider:*`)

Decision frameworks for complex problems:

| Command | Framework |
|---------|-----------|
| `/consider:pareto` | 80/20 rule - find high-impact actions |
| `/consider:inversion` | Solve problems backwards |
| `/consider:first-principles` | Break down to base truths |
| `/consider:5-whys` | Root cause analysis |
| `/consider:eisenhower-matrix` | Urgent/important prioritization |
| `/consider:second-order` | Consequences of consequences |
| `/consider:opportunity-cost` | What you give up |
| `/consider:occams-razor` | Simplest explanation |
| `/consider:via-negativa` | Improve by subtraction |
| `/consider:swot` | Strategic planning |
| `/consider:10-10-10` | Short/medium/long term impact |
| `/consider:one-thing` | Highest leverage action |

---

## Skills

Structured knowledge frameworks for complex tasks.

| Skill | Purpose |
|-------|---------|
| `create-agent-skills` | Guide for creating Claude Code skills |
| `create-hooks` | Guide for event-based automation |
| `create-meta-prompts` | Claude-to-Claude pipeline optimization |
| `create-plans` | Hierarchical project planning |
| `create-slash-commands` | Slash command best practices |
| `create-subagents` | Agent creation guide |
| `debug-like-expert` | Deep analysis debugging mode |

---

## Project Documentation System

The bootstrap creates a documentation structure optimized for AI session continuity.

### File Purposes

| File | Purpose | Load When |
|------|---------|-----------|
| `claude.md` | Project identity, always loaded | Auto |
| `docs/architecture.md` | System design | Integration, design work |
| `docs/decisions.md` | ADRs - why you chose things | Proposing changes |
| `docs/troubleshooting.md` | Known issues & solutions | Debugging |
| `docs/changelog.md` | Session history | Session start |
| `docs/roadmap.md` | Planning & priorities | Deciding what to work on |
| `docs/patterns.md` | Code conventions | Writing/reviewing code |

### The /sync Discipline

**Run `/sync` at the end of every meaningful session.** It captures:

- **Decisions** → `docs/decisions.md` as ADRs
- **Problems solved** → `docs/troubleshooting.md`
- **Patterns established** → `docs/patterns.md`
- **Architecture changes** → `docs/architecture.md`
- **Progress** → `docs/changelog.md` + `docs/roadmap.md`

This is what makes context persist across sessions. Skip it and you lose context.

---

## Directory Structure

After installation:

```
~/.claude/
├── agents/              # Symlinked from ~/.claude-code-tools
│   ├── bash-expert.md
│   ├── rails-expert.md
│   └── ...
├── commands/            # Symlinked from ~/.claude-code-tools
│   ├── bootstrap.md
│   ├── sync.md
│   ├── create-plan.md
│   └── ...
└── skills/              # Symlinked from ~/.claude-code-tools
    ├── create-agent-skills/
    └── ...

~/.claude-code-tools/    # Source repo
├── agents/
├── commands/
├── skills/
├── install.sh
└── README.md
```

---

## Security Notes

### This Repository

✅ **Safe to clone** - Contains only markdown instruction files, no executable code beyond the install script.

### Your Project Docs

⚠️ **May contain sensitive info.** The `docs/` created in your projects could capture:
- Error messages with internal details
- Architecture revealing system design
- API endpoints and internal URLs

**If your project repo is public**, add to `.gitignore`:
```gitignore
docs/troubleshooting.md
docs/architecture.md
# Or: docs/
```

### Best Practices

- Never put credentials or API keys in documentation
- Review troubleshooting.md before committing (may have error details)
- Keep docs/ private for proprietary systems

---

## Customization

### Adding Your Own Agents

```bash
# Create new agent
vim ~/.claude-code-tools/agents/my-expert.md

# It's automatically available after save (if using --link)
```

### Modifying Bootstrap

Edit `~/.claude-code-tools/commands/bootstrap.md` to:
- Change default doc templates
- Add stack-specific docs
- Modify agent recommendations

### Project-Specific Commands

Projects can have their own commands in `.claude/commands/` that extend or override global ones.

---

## Contributing

1. Fork the repository
2. Follow existing patterns
3. Include clear descriptions and examples
4. Test before submitting PR

---

## Credits

Built on work from:
- [glittercowboy](https://github.com/glittercowboy)
- [VoltAgent](https://github.com/VoltAgent)

---

## License

MIT
