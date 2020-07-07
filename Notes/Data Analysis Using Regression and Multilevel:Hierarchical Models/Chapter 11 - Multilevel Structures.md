# Chapter 11: Multilevel Structures

This chapter covers basic mulitlevel models, surveys data that have multilevel structure (grouped data, repeated measurements, time-series crosss sections, non-nested structures), and outlines costs and benefits of multilevel modeling over classical regresion. 

### Basic regression models for grouped data

For data in which there are $J$ groups, there are three basic regression models: varying-intercept, varying-slope, and varying-intercet and varying-slope. 

**Varying-intercept model:** $$y_i = \alpha_{j[i]} + \beta x_i + \epsilon_i$$

**Varying-slope model:** $$y_i = \alpha + \beta_{j[i]}x_i + \epsilon_i$$

**Varying-intercept, varying-slope model:** $$y_i = \alpha_{j[i]} + \beta_{j[i]} x_i + \epsilon_i$$

Estimating all $\alpha_j$'s and $\beta_j$'s can be challenging. The rough method in multilevel modeling is to first set up a regression with varying coefficients (which vary by group). The next step is to fit a regression model for the coefficients. 

### Grouped data example: Child support enforcement in cities

Study context: observational study on effect of city-level policies on enforcing child support payments from unmarried fathres. Treatment occurs at city level, outcome is measured on individual families. 



### Benefits of multilevel modeling

- Accounting for individual- and group-level variation in estimating group-level regression coefficients
- Modeling variation among individual-level regression coefficients (how coefficients vary across grouops)
- Estimating regression coefficents for particular groups

### Types of multilevel data

- Grouped data
- Repeated measurement (or time series) data




### Possible methods to analyze grouped data

For analyzing multilevel data, there are several approaches.

Individual-level regression: You can build a regression model at the individual level. The issue is that this ignores city-level variation.

Group-level regression: You can perform a city-level analysis. This is a regression model using city averages. The problem with this, though, is that you can't use individual predictors to predict individual outcomes, so you miss out on individual level variation.

Individual-level regression with city indicators, followed by group-level regression of city effects: First, fit a a regression to individual data, along with indicators for each group. Then perform a regression at city level, using estimated coefficients of city indicators as data

### Multilevel models







