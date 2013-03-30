Cause Effect Pairs R package
============================


This repo contains some sample code in R to read pairs data for the [Cause Effect Pairs Challenge](https://www.kaggle.com/c/cause-effect-pairs), a machine learning challenged hosted by [Kaggle](https://www.kaggle.com) and organized by [ChaLearn](http://www.chalearn.org/).


# Install the package
```
require(devtools)
install_github("CausalPairs", "dickoa")
```



# How to use it
The main function in this package is the `read_pairs_data`

```
require(CausalPairs)
valid <- read_pairs_data("path_to_data/CEdata_valid_pairs.csv")
train <- read_pairs_data("path_to_data/CEdata_train_pairs.csv")
```

Normall you should get something like

```
str(train)
Classes ‘data.table’ and 'data.frame':	20569477 obs. of  3 variables:
 $ SampleID: chr  "train1" "train1" "train1" "train1" ...
 $ A       : num  2092 1143 390 1424 1277 ...
 $ B       : num  5651 4449 4012 6124 7310 ...
 - attr(*, "sorted")= chr "SampleID"
 - attr(*, ".internal.selfref")=<externalptr>
```

# More info
For those not really familiar with `data.table` object, you can check out the vignettes

```
vignette("datatable-faq", package = "data.table")
vignette("datatable-intro", package = "data.table")
```

More ressources at [data.table project](http://datatable.r-forge.r-project.org/)


