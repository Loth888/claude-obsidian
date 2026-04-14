---
type: meta
title: "Operation Log"
updated: 2026-04-14
tags:
  - meta
  - log
status: evergreen
related:
  - "[[index]]"
  - "[[hot]]"
  - "[[overview]]"
  - "[[sources/_index]]"
---

# Operation Log

Navigation: [[index]] | [[hot]] | [[overview]]

Append-only. New entries go at the TOP. Never edit past entries.

Entry format: `## [YYYY-MM-DD] operation | Title`

Parse recent entries: `grep "^## \[" wiki/log.md | head -10`

---

## [2026-04-14] ingest | 你的知识需要管理（田志刚）- 完整版
- Type: ingest (complete)
- Source: `.raw/你的知识需要管理_田志刚.pdf` (165 pages)
- Method: Full text extraction via pdftotext
- Coverage: 100% - All 6 chapters + appendix extracted
- Pages created (total 7):
  - [[知识力]] - 核心概念
  - [[五个知识问题]] - 五步法框架
  - [[知识共享]] - 第四章完整内容
  - [[知识使用]] - 第五章完整内容
  - [[知识创新]] - 第六章完整内容
  - [[个人知识管理现状测试]] - 附录测试工具
  - [[田志刚]] - 作者实体
- Key tools documented:
  - 奥斯本检核表法（9大类75个问题）
  - 思维导图（Mind Map）
  - "外行的忠告"创新方法
  - 个人知识管理现状测试（10题）
- Cross-references: Linked to [[一堂知识管理课程]] for comparison

## [2026-04-14] ingest | 你的知识需要管理（田志刚）
- Type: ingest
- Source: `.raw/你的知识需要管理_田志刚.pdf`
- Method: Text extraction from user-provided preview
- Pages created: [[知识力]], [[五个知识问题]], [[田志刚]], [[你的知识需要管理_田志刚]]
- Key concepts: 知识力, 五个知识问题（学习、保存、共享、使用、创新）
- Key findings: 
  - 无知的新定义：不是没知识，而是不会用
  - 未来 = 知识管理能力
  - 五步打造个人知识力框架
  - 学习必须达到一定深度，否则只是常识

## [2026-04-14] ingest | 一堂知识管理课程
- Type: ingest
- Source: `.raw/一堂知识管理课程.pdf` (76 pages)
- Method: OCR extraction (page 1)
- Pages created: [[个人知识管理]], [[IPO模型]], [[持续输出能力]], [[一堂知识管理课程]]
- Key concepts: 个人知识管理, IPO模型, 持续输出能力
- Key findings: 知识管理三大困扰（缺少审美、信息过载、收藏不用），知识留存率仅1%
- Note: Full 76-page OCR pending; continue extraction for more content

## [2026-04-08] save | claude-obsidian v1.4 Release Session
- Type: session
- Location: wiki/meta/claude-obsidian-v1.4-release-session.md
- From: full release cycle covering v1.1 (URL/vision/delta tracking, 3 new skills), v1.4.0 (audit response, multi-agent compat, Bases dashboard, em dash scrub, security history rewrite), and v1.4.1 (plugin install command hotfix)
- Key lessons: plugin install is 2-step (marketplace add then install), allowed-tools is not valid frontmatter, Bases uses filters/views/formulas not Dataview syntax, hook context does not survive compaction, git filter-repo needs 2 passes for full scrub

## [2026-04-08] ingest | Claude + Obsidian Ecosystem Research
- Type: research ingest
- Source: `.raw/claude-obsidian-ecosystem-research.md`
- Queries: 6 parallel web searches + 12 repo deep-reads
- Pages created: [[claude-obsidian-ecosystem]], [[cherry-picks]], [[claude-obsidian-ecosystem-research]], [[Ar9av-obsidian-wiki]], [[Nexus-claudesidian-mcp]], [[ballred-obsidian-claude-pkm]], [[rvk7895-llm-knowledge-bases]], [[kepano-obsidian-skills]], [[Claudian-YishenTu]]
- Key finding: 16+ active Claude+Obsidian projects; 13 cherry-pick features identified for v1.3.0+
- Top gap confirmed: no delta tracking, no URL ingestion, no auto-commit

## [2026-04-07] session | Full Audit, System Setup & Plugin Installation
- Type: session
- Location: wiki/meta/full-audit-and-system-setup-session.md
- From: 12-area repo audit, 3 fixes, plugin installed to local system, folder renamed

## [2026-04-07] session | claude-obsidian v1.2.0 Release Session
- Type: session
- Location: wiki/meta/claude-obsidian-v1.2.0-release-session.md
- From: full build session — v1.2.0 plan execution, cosmic-brain→claude-obsidian rename, legal/security audit, branded GIFs, PDF install guide, dual GitHub repos


- Source: `.raw/` (first ingest)
- Pages updated: [[index]], [[log]], [[hot]], [[overview]]
- Key insight: The wiki pattern turns ephemeral AI chat into compounding knowledge — one user dropped token usage by 95%.

## [2026-04-07] setup | Vault initialized

- Plugin: claude-obsidian v1.1.0
- Structure: seed files + first ingest complete
- Skills: wiki, wiki-ingest, wiki-query, wiki-lint, save, autoresearch
