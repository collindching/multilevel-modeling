# Ch 1 - Background

## What is multilevel regression modeling?

A regression whose parameters (the regression coefficients) have a probability model. The model of these parameters have parameters of their own, known as hyperparameters.

Multilevel models have two key parts:
1. Varying coefficients, and 
2. A model for those varying coefficients 

While classical regression can accommodate for varying coefficients via indicator variables, multilevel models are capable of modeling variation between groups.

## Models for regression coefficients

Consider an educational study using data on students from different schools. Students' grades $y$ on a standardized test are predicted based on a pre-test score $x$. 

Two levels of regressions can be fit for this data. The first is a student-level regression that predicts student grades, one model for each school. The second is a school-level regression that uses the pre-test coefficients of the schools as the target, and school traits as predictors.

For this data setup, you may have a _varying intercept model_, in which only intercepts vary between schools:

$$y_i = \alpha_{j[i]} + \beta x_i + \epsilon_i \tag*{for students i = 1, ..., n}$$

$$\alpha_j = a + bu_j + \eta_j \tag*{for schools j = 1, ..., J}$$ 


You can also have a _varying intecept, varying-slope model_:

$$y_i = \alpha_{j[i]} + \beta x_i + \epsilon_i \tag*{for students i = 1, ..., n}$$

$$\alpha_j = a_0 + b_0 u_j + \eta_{j1} \tag*{for schools j = 1, ..., J}$$ 

$$\beta_j = a_1 + b_1 u_j + \eta_{j2} \tag*{for schools j = 1, ..., J}$$

## Labels

Multilevel models are also called hierarchical models because data may structured such that one group (students) is a subgroup of the other (schools). There is also a hierarchy in the model, with the within-school parameters at the bottom and school hyperparameters at the top. 

There exist multilevel data structures that aren't technically nested. In these cases, the label multilevel model is more appropriate.

### On random effects

Multilevel models are also referred to as random-effects or mixed-effects models. 

Here, the regression coefficients being modeled are the random effects. Fixed effects correspond to parameters that don't vary by group, or to parameters that vary but aren't modeled. 

A mixed-effects model includes both fixed and random effects. 

In this book, the authors choose "multilevel models" as preferred terminology over "mixed-effects models". They give two reasons: 
- Fixed effects is a special case of random effects, where variance is set to 0. Thus technically all regression parameters are random, and multilevel can be used as an umbrella term. 
- Fixed, random, and mixed effects can be confusing and misleading terminology


## Motivations for multilevel modeling

#### Studying treatment effects that vary by group

It is often of interest to study how the effect of $x$ on $y$ varies throughout population. In classical statistics, interactions are used to study group-level variations; however, resulting estimates can be noisy (bad) when group sizes are small. Multilevel models allows us to study effects that vary by group with greater rigor. 

#### Performing inference on groups with small sample size

Given a group of interest that has a small sample size. Classical regression within this group will give noisy estimates. But a regression that ignores groups altogether overlooks important group-level variation. Multilevel modeling offers a tradeoff between these two approaches, balancing between over- and underfitting.

#### Prediction

In grouped data, predictions are made on existing and new groups. To make predictions on a new group with classical regression, you would first fit a two-stage regression: 1) a unit-level regresssion that includes group indicators, and 2) a regression on the group effects, using group-level predictors. 

Then you could use the attributes of the new group to estimate its coefficient in the unit-level regression, and use the unit-level regression to make individual predictions. Issues arise when you have small sample sizes, but multilevel models can make predictions while accounting uncertainty. 

#### Analysis of structured data

To make inference on datasets with multilevel structure, inferences should take into account the design of data collection. Multilevel modeling accounts for all levels of a design without being overwhelmed with overfitting. 

#### More efficient inference of regression parameters

Data often arises in a multilevel structure. Traditional alternatives to multilevel modeling are complete pooling (group differences are ignored) and no pooling (data from different sources are analyzed separately and locally), neither of which are ideal. Complete pooling tends overlooks group-level variation; no pooling leads to high-variance estimates. Partial pooling via multilevel analysis tends tends to be a good tradeoff. 

#### Including predictors at two different levels

Multilevel models coherently model individual- and group-level models.

#### Getting the right standard error 

To get an accurate measure of predictive uncertainty, correlation between groups must be accounted for--multilevel modeling conveniently handles this.





