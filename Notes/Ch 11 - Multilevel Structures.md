# Chapter 11: Multilevel Structures

### Benefits of multilevel modeling

- Accounting for individual- and group-level variation in estimating group-level regression coefficients
- Modeling variation among individual-level regression coefficients (how coefficients vary across grouops)
- Estimating regression coefficents for particular groups

### Types of multilevel data

- Grouped data
- Repeated measurement (or time series) data


### Example structures for multilevel data

**Varying-intercept model:** $$ y_i = \alpha_{j[i]} + \beta x_i + \epsilon_i $$

**Varying-slope model:** $$ y_i = \alpha + \beta_{j[i]}x_i + \epsilon_i $$

**Varying-intercept, varying-slope model:** $$ y_i = \alpha_{j[i]} + \beta_{j[i]} x_i + \epsilon_i $$



The first step of multilevel modeling is to set up a regression with varying coefficients; the second step is to set up a regression model for the coefficients themselves.

In multilevel modeling, each level of a model can have its own matrix of predictors. 

Treatment may occur at group level.

### Possible methods to analyze grouped data

For analyzing multilevel data, there are several approaches.

Individual-level regression: You can build a regression model at the individual level. The issue is that this ignores city-level variation.

Group-level regression: You can perform a city-level analysis. This is a regression model using city averages. The problem with this, though, is that you can't use individual predictors to predict individual outcomes, so you miss out on individual level variation.

Individual-level regression with city indicators, followed by group-level regression of city effects: First, fit a a regression to individual data, along with indicators for each group. Then perform a regression at city level, using estimated coefficients of city indicators as data

### Multilevel models







