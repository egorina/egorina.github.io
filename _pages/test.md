---
title: ""
permalink: /test/
excerpt: "Test"
author_profile: true
redirect_from: 
  - /test
output:
  html_document:
    self_contained: false
---

## ARTICLES


```{r , include=FALSE}
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

 test test
<head>
 <link rel="import" href="start.html">
</head>

<script type="text/javascript" src="//cdn.datacamp.com/dcl-react.js.gz"></script>

initAddedDCLightExercises();

<div data-datacamp-exercise data-lang="r">
  <code data-type="pre-exercise-code">
    # This will get executed each time the exercise gets initialized
    b = 6
  </code>
  <code data-type="sample-code">
    # Create a variable a, equal to 5


    # Print out a


  </code>
  <code data-type="solution">
    # Create a variable a, equal to 5
    a <- 5

    # Print out a
    print(a)
  </code>
  <code data-type="sct">
    test_object("a")
    test_function("print")
    success_msg("Great job!")
  </code>
  <div data-type="hint">Use the assignment operator (<code><-</code>) to create the variable <code>a</code>.</div>
</div>