# lwc2022

`lwc2022` is a package designed to generate the Langa-Weir classification of cognitive function for the 2022 [Health and Retirement Study (HRS)](https://hrsdata.isr.umich.edu/) cognition data. For previous waves of HRS data (1995 - 2020) there is a [researcher contributed dataset](https://hrsdata.isr.umich.edu/data-products/langa-weir-classification-cognitive-function-1995-2020) of dementia classifications. However, with the recent release of the 2022 HRS data, these classifications have yet to be updated. As such, the `lwc2022` package aims to provide tools that allow researchers to apply the same classification methodology to the 2022 cognition data.

To examine the full vignette check out: [lwc2022](https://c-monaghan.github.io/lwc2022/articles/lwc2022.html)

## Installing the package

To install from CRAN

```{r}
install.packages("lwc2022")
```

Alternatively, to install from Github

```{r}
devtools::install_github("C-Monaghan/lwc2022")
```

Next, load the package with

```{r}
library(lwc2022)
```
