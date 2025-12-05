# Bootstrap Project

Initialize a new project with standardized documentation structure for Claude Code session continuity.

## Available Agents

This toolset includes these specialized agents for delegation:

**Language & Framework Experts:**
- `@bash-expert` - Shell scripting, CI/CD, automation
- `@go-expert` - Go development, concurrency, performance
- `@python-expert` - Python 3.11+, async, type safety
- `@rails-expert` - Ruby on Rails applications
- `@react-expert` - React components, hooks, state management
- `@typescript-expert` - TypeScript, advanced types

**Database & Data:**
- `@postgres-expert` - PostgreSQL optimization, schema design
- `@sql-expert` - Query writing, optimization

**DevOps & Infrastructure:**
- `@git-workflow-manager` - Git workflows, commits, branching
- `@puppet-expert` - Puppet manifests, infrastructure as code

**Styling:**
- `@tailwind-expert` - Tailwind CSS, responsive design

**Development Tools:**
- `@changelog-generator` - Release notes, semantic versioning
- `@code-reviewer` - Code review, security, quality
- `@prompt-engineer` - LLM prompt optimization

## Process

### 1. Gather Project Information

If not already apparent from existing files, ask:
```
- Project name
- One-line purpose
- Primary language/framework
- New project or existing codebase?
```

### 2. Detect Stack & Recommend Agents

Based on project type, identify primary agents:

| Stack | Primary | Supporting |
|-------|---------|------------|
| Rails | @rails-expert | @postgres-expert, @sql-expert, @tailwind-expert |
| Python | @python-expert | @postgres-expert, @sql-expert, @bash-expert |
| Go | @go-expert | @postgres-expert, @sql-expert, @bash-expert |
| React | @react-expert | @typescript-expert, @tailwind-expert |
| TypeScript | @typescript-expert | @react-expert |
| Infrastructure | @puppet-expert, @bash-expert | @git-workflow-manager |

### 3. Create Directory Structure

```bash
mkdir -p docs
mkdir -p .claude/commands
```

### 4. Create claude.md

Create the main project context file:

```markdown
# [Project Name]

> [One-line purpose]

## Identity

- **Stack**: [Primary language/framework]
- **Status**: [Active development / Maintenance / etc.]

## Current Focus

[What's being worked on now]

---

## Agent Delegation

Use these agents for specialized work:

| Task | Agent | Notes |
|------|-------|-------|
| [Primary dev work] | @[primary-expert] | Main development |
| [Database work] | @postgres-expert, @sql-expert | Schema, queries |
| [Code quality] | @code-reviewer | Before merging |
| [Git operations] | @git-workflow-manager | Commits, branches |

Example: `@rails-expert optimize this N+1 query`

---

## Documentation

Load docs **when relevant** to current task:

| Doc | Load When |
|-----|-----------|
| [architecture.md](docs/architecture.md) | System design, integration |
| [decisions.md](docs/decisions.md) | Understanding "why", proposing changes |
| [troubleshooting.md](docs/troubleshooting.md) | Debugging, errors |
| [changelog.md](docs/changelog.md) | Session start, recent context |
| [roadmap.md](docs/roadmap.md) | Planning, priorities |
| [patterns.md](docs/patterns.md) | Code conventions |

---

## Critical Rules

<!-- Project-specific non-negotiables -->

---

## Workflows

**Start**: claude.md loads → check changelog → `/context` or `/whats-next`

**Work**: `/create-plan` → delegate to @agents → build

**End**: `/sync` (captures everything to docs/)

---

*Last synced: [Date]*
```

### 5. Create Documentation Files

Create in `docs/`:

**docs/architecture.md**
```markdown
# Architecture

> System design overview. Load for integration or design work.

## Overview

[System description - add as you build]

## Components

[Document as created]

## Data Flow

[Document data movement through system]

## External Dependencies

| Service | Purpose | Notes |
|---------|---------|-------|

---
*Updated: [Date]*
```

**docs/decisions.md**
```markdown
# Decisions (ADRs)

> Architecture Decision Records. Load when understanding "why" or proposing changes.

---

## ADR-001: Project Setup

**Date**: [Today]
**Status**: Accepted

### Context
Initializing [project name] - [purpose].

### Decision
- Stack: [chosen stack]
- Documentation: Split-file system with /sync workflow
- Primary agent: @[primary-expert]

### Rationale
- [Why this stack]
- Consistent structure enables session continuity
- Agent delegation for specialized expertise

### Consequences
- ✅ Full context preserved across sessions
- ✅ Decisions traceable via ADRs
- ⚠️ Requires /sync discipline

---

| ID | Decision | Date | Status |
|----|----------|------|--------|
| 001 | Project Setup | [Today] | Accepted |

---
*Updated: [Date]*
```

**docs/troubleshooting.md**
```markdown
# Troubleshooting

> Known issues and solutions. Load when debugging.

## Quick Diagnostics

```bash
# Add project-specific health checks
```

## Known Issues

<!-- Add as discovered and solved -->

## Error Reference

<!-- Add error patterns as encountered -->

## Recently Solved

| Date | Issue | Solution |
|------|-------|----------|

---
*Updated: [Date]*
```

**docs/changelog.md**
```markdown
# Changelog

> Session history. Load at session start for context.

## Sessions

### [Today] - Project Initialized

**Focus**: Initial setup

**Accomplished**:
- Created project structure
- Initialized documentation system
- Configured for [stack] development

**Primary Agents**: @[primary-expert], @[supporting-experts]

**Next Steps**:
- [ ] Define architecture
- [ ] Establish code patterns
- [ ] Create initial roadmap

---

*Updated: [Date]*
```

**docs/roadmap.md**
```markdown
# Roadmap

> Planning and priorities. Load when deciding what to work on.

## Current Focus

[Active work area]

### Active
- [ ] Define initial architecture
- [ ] Set up development environment

### Blocked

---

## Backlog

### High Priority

### Medium Priority

### Ideas

---

## Completed

| Date | Item |
|------|------|
| [Today] | Project setup |

---
*Updated: [Date]*
```

**docs/patterns.md**
```markdown
# Patterns & Conventions

> Code standards. Load when writing or reviewing code.

## Language Conventions

### [Primary Language]

**Style guide**: [Reference]

**Key rules**:
- [Convention 1]
- [Convention 2]

---

## Project Patterns

<!-- Add as established -->

---

## Anti-Patterns

<!-- Document what to avoid and why -->

---

## Naming Conventions

| Thing | Convention | Example |
|-------|------------|---------|

---

## Git Conventions

**Branches**: [pattern]
**Commits**: [format]

---
*Updated: [Date]*
```

### 6. Create Project Commands

**`.claude/commands/sync.md`**
```markdown
# Sync Documentation

Update project documentation with current session work.

## Process

1. **Review session** for:
   - Decisions made → add ADR to docs/decisions.md
   - Problems solved → add to docs/troubleshooting.md
   - Patterns established → add to docs/patterns.md
   - Architecture changes → update docs/architecture.md
   - Tasks completed → update docs/roadmap.md, docs/changelog.md
   - New tasks identified → add to docs/roadmap.md

2. **Add changelog entry**:
   ```markdown
   ### [Date] - [Brief Title]

   **Focus**: [Main topic]

   **Accomplished**:
   - [Specific items with file/feature names]

   **Decisions Made**:
   - [Decision] (see ADR-XXX)

   **Issues Encountered**:
   - [Problem] → [Solution]

   **Agents Used**:
   - @[agent] for [purpose]

   **Next Steps**:
   - [ ] [Follow-up items]

   **Open Questions**:
   - [Unresolved items]
   ```

3. **Update claude.md** timestamp

4. **Output summary** of captured items

## Guidelines

- Be specific: actual file names, function names, concrete details
- Preserve "why": future sessions need reasoning
- Cross-reference: link ADRs, mention related issues
- Note which agents were helpful for which tasks

## Start

Review this session and update documentation.
```

**`.claude/commands/context.md`**
```markdown
# Load Context

Load only documentation relevant to the current task.

## Task → Docs Mapping

| Task | Load | Suggested Agent |
|------|------|-----------------|
| Bug fix | troubleshooting.md, architecture.md | /debug |
| New feature | architecture.md, patterns.md, roadmap.md | /create-plan |
| Refactoring | architecture.md, patterns.md, decisions.md | @code-reviewer |
| Database work | architecture.md | @postgres-expert, @sql-expert |
| Planning | roadmap.md, changelog.md | /whats-next |
| Code review | patterns.md, decisions.md | @code-reviewer |
| Styling | patterns.md | @tailwind-expert |
| Git operations | | @git-workflow-manager |

## Process

1. Identify task type from request
2. Load minimal required docs
3. Check last 2-3 changelog entries
4. Summarize loaded context
5. Suggest relevant agent if applicable
6. Proceed with task

## Output

```markdown
## Context Loaded

**Task**: [Interpreted task]

**Loaded**:
- [doc] → [relevant sections]

**Recent Context**: [From changelog]

**Suggested**: @[agent] for [reason]

Ready to proceed.
```

## Start

What task are you working on?
```

### 7. Git Integration

If `.gitignore` exists, suggest adding:
```gitignore
# Claude Code local settings
.claude/settings.local.json
```

### 8. Output Summary

```markdown
## ✅ Bootstrap Complete

**Project**: [name]
**Stack**: [stack]

**Created**:
- claude.md (project context with agent references)
- docs/architecture.md
- docs/decisions.md (with ADR-001)
- docs/troubleshooting.md
- docs/changelog.md (with init entry)
- docs/roadmap.md
- docs/patterns.md
- .claude/commands/sync.md
- .claude/commands/context.md

**Your Agents for This Project**:
- Primary: @[primary-expert]
- Supporting: @[list]
- Always available: @code-reviewer, @git-workflow-manager

**Workflow**:
1. Start: claude.md auto-loads
2. Orient: `/whats-next` or check changelog
3. Plan: `/create-plan` for complex work
4. Build: delegate to @agents
5. End: `/sync` (CRITICAL - preserves everything)

**Key Commands**:
- /sync - End of session (always run this)
- /context - Load relevant docs
- /create-plan → /run-plan - Feature development
- /debug - When stuck
- /check-todos - Task management

Ready to build!
```

## For Existing Codebases

If bootstrapping existing code:
1. Analyze codebase structure for architecture.md
2. Extract any documented decisions as ADRs
3. Note known issues in troubleshooting.md
4. Capture existing conventions in patterns.md
5. Note this is a migration in changelog

## Start

Tell me about your project, or I'll analyze existing files if this is an established codebase.
