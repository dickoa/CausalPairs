Cause Effect Pairs Challenge
============================

This repo contains some sample code in R to read pairs data for the [Cause Effect Pairs Challenge](https://www.kaggle.com/c/cause-effect-pairs), a machine learning challenged hosted by [Kaggle](https://www.kaggle.com) and organized by [ChaLearn](http://www.chalearn.org/).


# Install the package
```r
require(devtools)
install_github("CausalPairs", "dickoa")
```

# How to use it
The main function in this package is the `read_pairs_data`

```r
require(CausalPairs)
valid <- read_pairs_data("path_to_data/CEdata_valid_pairs.csv")
train <- read_pairs_data("path_to_data/CEdata_train_pairs.csv")
```
