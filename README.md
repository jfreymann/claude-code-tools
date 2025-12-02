# Claude Code Extensions

A curated collection of specialized agents, slash commands, and skills for Claude Code. This directory contains tools to enhance your development workflow with domain-specific expertise, productivity commands, and structured skill frameworks.

## Overview

This repository contains three main categories of extensions:

- **Agents**: Specialized subagents with deep domain expertise
- **Commands**: Slash commands for productivity and workflow automation
- **Skills**: Structured knowledge frameworks for complex tasks

## Agents

Specialized subagents that provide expert-level assistance in specific domains. Agents can be invoked using the Task tool with the appropriate `subagent_type`.

### Language & Framework Experts

| Agent | Description | Use When |
|-------|-------------|----------|
| **bash-expert** | Production-grade Bash scripting with defensive programming | Writing shell scripts, CI/CD pipelines, deployment automation |
| **go-expert** | Idiomatic Go development, concurrency patterns, performance | Working with Go code, goroutines, channels, interfaces |
| **python-expert** | Modern Python 3.11+ with type safety and async patterns | Python development, data science, web frameworks |
| **rails-expert** | Ruby on Rails development expertise | Rails application development |
| **react-expert** | React component architecture, hooks, performance optimization | React development, state management, UI patterns |
| **typescript-expert** | Strict type safety, advanced types, async patterns | TypeScript development, type system optimization |

### Database & Data Experts

| Agent | Description | Use When |
|-------|-------------|----------|
| **postgres-expert** | PostgreSQL optimization, schema design, query tuning | Database design, performance tuning, backup strategies |
| **sql-expert** | SQL query writing, optimization, schema design | Writing complex queries, database optimization |

### DevOps & Tooling Experts

| Agent | Description | Use When |
|-------|-------------|----------|
| **git-workflow-manager** | Git workflow optimization, branching strategies, conflict resolution | Managing commits, improving Git workflows, pushing code |
| **puppet-expert** | Puppet manifests, roles/profiles pattern, infrastructure as code | Writing Puppet modules, troubleshooting agent runs |

### Styling & Design Experts

| Agent | Description | Use When |
|-------|-------------|----------|
| **tailwind-expert** | Tailwind CSS implementation, responsive design, optimization | Styling components, configuring Tailwind, performance optimization |

### Development Tools

| Agent | Description | Use When |
|-------|-------------|----------|
| **changelog-generator** | Professional changelogs from commits, semantic versioning | Documenting releases, preparing release notes |
| **code-reviewer** | Comprehensive code review with security and quality focus | After completing features, before merging PRs |
| **prompt-engineer** | LLM prompt optimization, cost reduction, accuracy improvement | Optimizing prompts, reducing token usage, improving outputs |

### Auditing Tools

| Agent | Description | Use When |
|-------|-------------|----------|
| **skill-auditor** | Audit SKILL.md files for best practices compliance | Reviewing skill documentation |
| **slash-command-auditor** | Audit slash command files for best practices | Reviewing slash commands |
| **subagent-auditor** | Audit subagent configurations for effectiveness | Reviewing agent configs |

## Commands

Slash commands provide quick access to common workflows and productivity tools. Commands are invoked with `/command-name`.

### Creation & Development

| Command | Description |
|---------|-------------|
| `/create-agent-skill` | Create or edit Claude Code skills with expert guidance |
| `/create-hook` | Create Claude Code hooks for event-based automation |
| `/create-meta-prompt` | Create prompts optimized for Claude-to-Claude pipelines |
| `/create-plan` | Create hierarchical project plans for solo development |
| `/create-prompt` | Create prompts that another Claude can execute |
| `/create-slash-command` | Create new slash commands following best practices |
| `/create-subagent` | Create specialized Claude Code subagents |

### Auditing & Quality

| Command | Description |
|---------|-------------|
| `/audit-skill` | Audit skill for YAML, XML structure, and best practices |
| `/audit-slash-command` | Audit slash command for configuration and quality |
| `/audit-subagent` | Audit subagent for role definition and effectiveness |
| `/heal-skill` | Apply corrections to skill documentation with approval |

### Task Management

| Command | Description |
|---------|-------------|
| `/add-to-todos` | Add todo item to TO-DOS.md with conversation context |
| `/check-todos` | List outstanding todos and select one to work on |
| `/run-plan` | Execute a PLAN.md file from the planning directory |
| `/run-prompt` | Delegate prompts to fresh sub-task contexts (parallel or sequential) |
| `/whats-next` | Analyze conversation and create handoff document |

### Analysis & Debugging

| Command | Description |
|---------|-------------|
| `/debug` | Apply expert debugging methodology to investigate issues |

### Mental Models (Consider Commands)

A collection of decision-making frameworks accessible via `/consider:*` commands:

| Command | Framework | Use For |
|---------|-----------|---------|
| `/consider:pareto` | Pareto Principle (80/20 rule) | Finding high-impact actions |
| `/consider:inversion` | Inversion thinking | Solving problems backwards |
| `/consider:via-negativa` | Improvement by subtraction | Finding what to remove |
| `/consider:opportunity-cost` | Trade-off analysis | Understanding what you give up |
| `/consider:eisenhower-matrix` | Urgent/Important matrix | Task prioritization |
| `/consider:second-order` | Second-order thinking | Analyzing consequences of consequences |
| `/consider:5-whys` | Root cause analysis | Drilling to fundamental causes |
| `/consider:occams-razor` | Simplicity principle | Finding simplest explanations |
| `/consider:one-thing` | Focus identification | Finding highest-leverage action |
| `/consider:swot` | SWOT analysis | Strategic planning |
| `/consider:10-10-10` | Multi-timeframe analysis | Evaluating long-term impact |
| `/consider:first-principles` | Fundamental reasoning | Breaking down to base truths |

## Skills

Structured knowledge frameworks that provide comprehensive guidance for complex tasks. Skills are invoked using the Skill tool.

### Available Skills

| Skill | Description |
|-------|-------------|
| **create-agent-skills** | Expert guidance for creating, writing, and refining Claude Code Skills |
| **create-hooks** | Guidance for creating and configuring Claude Code hooks |
| **create-meta-prompts** | Create optimized prompts for Claude-to-Claude pipelines |
| **create-plans** | Create hierarchical project plans for solo agentic development |
| **create-slash-commands** | Expert guidance for creating slash commands |
| **create-subagents** | Expert guidance for creating and using subagents |
| **debug-like-expert** | Deep analysis debugging mode for complex issues |

## Usage Examples

### Using an Agent

```
# Invoke the typescript-expert agent
User: "I need help optimizing this TypeScript code"
Claude uses: Task tool with subagent_type='typescript-expert'
```

### Using a Command

```
# Create a new plan
/create-plan user authentication system

# Add a todo
/add-to-todos Implement JWT token validation

# Apply a mental model
/consider:pareto feature prioritization
```

### Using a Skill

```
# Get guidance on creating a skill
User: "Help me create a new skill for API testing"
Claude uses: Skill tool with skill='create-agent-skills'
```

## Installation

1. Clone or download this directory to your Claude Code configuration folder (typically `~/.claude`)
2. The agents, commands, and skills will be automatically available in Claude Code

## Directory Structure

```
.claude/
├── agents/              # Specialized subagents
│   ├── bash-expert.md
│   ├── typescript-expert.md
│   └── ...
├── commands/            # Slash commands
│   ├── create-plan.md
│   ├── debug.md
│   ├── consider/        # Mental model commands
│   └── ...
└── skills/              # Structured knowledge frameworks
    ├── create-agent-skills/
    ├── create-hooks/
    └── ...
```

## Requirements

- Claude Code CLI
- Git (for git-workflow-manager agent)
- Language-specific tools (for language expert agents)

## Configuration Notes

### Git Workflow Manager

For autonomous commits, set up SSH keys and grant the agent access to your repository. The agent can validate security concerns, craft commit messages, and commit changes to remote repos.

You can execute "push code" for a streamlined commit workflow without interruption.

## Contributing

When adding new agents, commands, or skills:

1. Follow the established patterns in existing files
2. Use appropriate YAML frontmatter for configuration
3. Include clear descriptions and usage examples
4. Test thoroughly before committing

## Best Practices

- Use agents for domain-specific expertise
- Use commands for repeatable workflows
- Use skills for learning complex task patterns
- Combine tools for maximum productivity

## License

These extensions are provided as-is for use with Claude Code.

## Special thanks
A lot of these repos are pulled from the following and modified to meet my specific needs. Giving credit where credit is due! 
https://github.com/glittercowboy
https://github.com/VoltAgent
