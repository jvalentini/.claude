# Claude Code User Preferences

This file contains patterns and preferences extracted from session diary entries.

## General Preferences

- documentation: provide comprehensive, detailed documentation without asking; include examples, architecture diagrams, troubleshooting sections
- approach: prioritize best practices over quick hacks; user values thorough analysis ("ultrathink")
- decision-making: ask clarifying questions before major implementations; present multiple options with trade-offs
- technical proposals: include cost/effort estimates and ROI analysis when recommending significant work

## Docker & Containerization

- docker: build everything inside containers; no assumed host dependencies or volumes (except for hot-reload dev volumes)
- docker optimization: use multi-stage builds for dev/test/prod separation; aim for <100MB production images with nginx:alpine
- docker performance: use BuildKit cache mounts for package managers (npm, pip, cargo)
- docker tooling: create Makefile with organized commands (dev/test/prod sections) for complex Docker workflows
- docker-compose: use profiles to separate environments (dev default, --profile test, --profile production)
- docker testing: for Karma/Chrome tests, install Xvfb or use true ChromeHeadless browser; document X server requirement
- testing: when setting up infrastructure, always include test runner capabilities; user explicitly values testing in containers

## Agent Orchestration

- agent usage: verify agent type exists before launching; list available agents if uncertain
- agent orchestration: use sequential phases with parallel execution within phases; pass findings forward for context
- codebase exploration: use Task tool with Explore agent for comprehensive codebase analysis and documentation

## Project-Specific

### Angular 5 Legacy Projects
- angular 5: use --legacy-peer-deps, npm install not npm ci, Node 14 max, install python3/make/g++ for node-gyp
- legacy dependencies: use npm install (not npm ci) for projects with package overrides or legacy Angular

### Educational Platforms
- educational platforms: document data structures (data.json, kcData.json, gating.json), interactive component types, LMS integration

### Multi-Module Projects
- multi-module analysis: use parallel agents for cross-module security/architecture review; document inter-module dependencies

## Documentation Structure

- documentation structure: create multiple docs for different audiences (USAGE.md, ARCHITECTURE.md, OPTIMIZATION.md)
- architecture docs: include ASCII art diagrams, component hierarchies, data flow visualizations

## Git Practices

- git: respect when user stashes changes; indicates they want clean resolution before committing
