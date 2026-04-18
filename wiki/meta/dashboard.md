---
type: meta
title: "Dataview Dashboard"
updated: 2026-04-18
tags: [meta, dashboard]
status: evergreen
---

# Knowledge Base Dashboard

> 📊 实时数据仪表板 - 自动更新

---

## 📈 概览统计

### 页面类型分布
```dataview
TABLE length(rows) as Count
FROM "wiki"
GROUP BY type
```

### 页面状态分布
```dataview
TABLE length(rows) as Count
FROM "wiki"
GROUP BY status
```

---

## 🔄 最近活动

### 最近更新 (15条)
```dataview
TABLE type, status, updated
FROM "wiki"
SORT updated DESC
LIMIT 15
```

### 最近7天摄取的来源
```dataview
TABLE author, date_published, source_type
FROM "wiki/sources"
WHERE updated > date(today) - dur(7 days)
SORT updated DESC
```

---

## ⚠️ 需要关注

### 🌱 Seed 页面 (待开发)
```dataview
LIST
FROM "wiki"
WHERE status = "seed"
SORT updated ASC
```

### 📝 Developing 页面 (进行中)
```dataview
TABLE type, updated
FROM "wiki"
WHERE status = "developing"
SORT updated DESC
```

### 📅 陈旧页面 (>30天未更新)
```dataview
TABLE updated
FROM "wiki"
WHERE updated < date(today) - dur(30 days)
SORT updated ASC
```

---

## 🔗 链接健康

### 🔗 孤立页面 (无反链)
```dataview
TABLE type, updated
FROM "wiki"
WHERE (!file.inlinks OR length(file.inlinks) = 0)
AND type != "meta"
AND file.name != "index"
SORT updated ASC
```

### 🏷️ 未标签页面 (需要分类)
```dataview
TABLE type, status
FROM "wiki"
WHERE (!tags OR length(tags) = 0)
AND type != "meta"
SORT updated ASC
```

---

## 📚 来源质量

### 📖 概念缺少来源
```dataview
LIST
FROM "wiki/concepts"
WHERE !sources OR length(sources) = 0
```

### 👤 实体缺少来源
```dataview
LIST
FROM "wiki/entities"
WHERE !sources OR length(sources) = 0
```

### ⭐ 高可信度来源
```dataview
TABLE author, date_published
FROM "wiki/sources"
WHERE confidence = "high"
SORT date_published DESC
```

---

## 🎯 活跃与优先级

### 🔥 活跃主题 (7天内)
```dataview
TABLE type, updated
FROM "wiki"
WHERE updated > date(today) - dur(7 days)
SORT updated DESC
```

### 🚨 高优先级事项
```dataview
TABLE type, status, updated
FROM "wiki"
WHERE priority = "high" OR priority = "urgent"
OR contains(tags, "priority-high")
OR contains(tags, "todo")
SORT updated ASC
```

---

## 📊 分布分析

### 📈 按复杂度分布
```dataview
TABLE length(rows) as Count
FROM "wiki"
WHERE complexity
GROUP BY complexity
```

### 🌍 按领域分布
```dataview
TABLE length(rows) as Count
FROM "wiki"
WHERE domain
GROUP BY domain
```

---

## 💡 使用说明

### 如何刷新数据
- **自动刷新**: 打开页面时自动更新
- **手动刷新**: `Ctrl/Cmd + R` 或点击刷新按钮
- **实时更新**: 文件修改后自动刷新

### 查询语法速查
| 语法 | 说明 |
|------|------|
| `FROM "folder"` | 指定来源文件夹 |
| `WHERE condition` | 过滤条件 |
| `SORT field DESC` | 排序 |
| `LIMIT n` | 限制数量 |
| `GROUP BY field` | 分组统计 |

### 常用字段
- `type`: concept / entity / source / meta
- `status`: seed / developing / mature / archived
- `updated`: 最后更新日期
- `tags`: 标签数组
- `complexity`: basic / intermediate / advanced
- `domain`: 知识领域

---

*最后更新: 2026-04-18*
