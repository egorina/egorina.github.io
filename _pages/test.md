---
title: ""
permalink: /test/
excerpt: "Test"
author_profile: true
redirect_from: 
  - /test
---

## ARTICLES


```{r}
if (!require("pacman")) install.packages("pacman")
p_load(data.table, tutorial) # Packages 
```

```{r, include=FALSE}
tutorial::go_interactive()
```

By default, `tutorial` will convert all R chunks.

```{r}
a <- 2
b <- 3

a + b
```

