# Chapter 12: Multilevel linear models - The Basics

## Partial pooling with no predictors

Multilevel regression can be thought of as a method of comprimising between complete pooling (estimating average  without differentiating groups) and no pooling (estimating average for each group).


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

## Partial pooling with predictors

In this scenario, no-pooling can refer to fitting a separate regression model within each group, or classical regression model that includes group indicators.

### Complete-pooling regression

Recall, this will not take into account group-level variation; it pools all observations into a single group

$$ y_i = \alpha + \beta x_i + \epsilon_i $$

### No-pooling regression

Includes an indicator for each group (different intercept for each group, same slope) 

$$y_i = \alpha_{j[i]} + \beta x_i + \epsilon_i$$

_Note on R formulas:_ The `-` operator removes the specified terms, so that `(a+b+c)^2 - a:b` is identical to `a + b + c + b:c + a:c`. It can also used to remove the intercept term: when fitting a linear model `y ~ x - 1` specifies a line through the origin. 

### Problems with no-pooling and complete-pooling analyses

Complete-pooling ignores group-level variation, which is undesirable if you are analyzing those groups. No-pooling overstates variance between groups. Moreover, groups with small sample size result in un-trustworthy models.

### Multilevel analysis

A simple multilevel model for data with one predictor can be written as

$$ y_i \sim \text{N}(\alpha_{j[i]} + \beta x_i, \sigma^2_y), \tag*{for i = 1, \ldots, n}$$

where

$$ \alpha_j \sim \text{N}(\mu_\alpha, \sigma^2_\alpha), \tag*{for j = 1, \ldots, n}$$

The distribution has the effect of pulling estimates $\alpha_j$ toward the mean $\mu_alpha$, like a soft constraint. When $\sigma_\alpha \rightarrow \infty$ the soft constraint does nothing, leading to no-pooling. When $\sigma_\alpha \rightarrow 0$ you hae a hard constraint on $\alpha_j$, resulintg in complete-pooling.

Groups with small sample sizes will have stronger pooling (closer to overall average model), whereas groups with larger sample sizes will have weaker pooling (closer to group-level model). 

### Average regression line and individual- and group-level variances

To examine multilevel models, it's more common to plot group-level models and varying parameters, as opposed to examining numerical estimates. It can be helpful to look at numerical summaries of hyperparameters though.

For example, if you have $\hat{\mu}_\alpha = 1.46$, $\hat\beta = -0.69$ then the regression line for all groups is $y=1.46-0.69x$. If $\hat\sigma_y = 0.76$ and $\hat\sigma_\alpha = 0.33$ then you have error standard deviations of 0.76 at the individual level and 0.33 at the county level.

You can consider variation between counties $\sigma_\alpha$ relative to the variance ratio $\frac{\sigma_\alpha^2}{\sigma_y^2} = \frac{0.33^2}{0.76^2} = 0.19$. 

This tells you that the variance between groups is same as the variance of 5 measurements in a group. This also 

This tells you that the standard deviation between groups 