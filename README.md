---
title: "An Iris Species Predictor App"
author: "Max Almodovar"
date: "Thursday, April 21, 2016"
output: html_document
---

The following app on Shiny <http://rmarkdown.rstudio.com> is a very simple app that helps to predict the Species of an Iris flower according to the dimension of its Sepal and its Petal.

The app uses the following packages and the Iris dataset included in R by default:

```{r, eval = FALSE}
library(shiny)
library(caret)

data(iris)
```

### Explanation of the model

For predicting the Iris Species, we have used a **Random Forest Model**. Details of the model are included in the file `rf.model.rda` incuded in this GitHub repo.
