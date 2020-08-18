# Chapter 12: Multilevel linear models - The Basics

## Partial pooling with no predictors

Multilevel regression can be thought of as a method of comprimising between complete pooling (building one big model without differentiating groups) and no pooling (estimation a separate model for each group).


### Complete-pooling and no-pooling regression estimates

Complete pooling: Estimate average across all groups, ignoring crucial variation among groups.

No pooling: Estimate average for each group, overstating the variation.


### Partial-pooling estimates from a multilevel model

Multilevel estimates represent a compromise between complete- and partial-pooling. 

Multilevel estimate for a given group $j$ can be approximated as weighted average of mean of observations in group ($\bar{y_j}$) and mean over all groups ($\bar{y}_{all}$).

$$\hat{\alpha}_j^{multilevel} = \frac{\frac{n_j}{\sigma^2_y}\bar{y}_j + \frac{1}{\sigma^2_\alpha}\bar{y}_{all}}{\frac{n_j}{\sigma^2_y}+\frac{1}{\sigma^2_\alpha}}$$

Weighted average reflects relative information available about the individual group and the average of all the groups.

- If a group has a smaller sample size, more weight is given to the overall average 
- If a group has a larger sample size, more weight is given to the group average

To apply the formula, you need estimates of variation within and between groups.