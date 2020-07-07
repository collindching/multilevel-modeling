## Multilevel Modeling Learning Plan

Multilevel models, also known as hierarchical linear models (HLMs), linear mixed effects models (LMEs), and linear mixed models (LMMs), are an application of linear regression for multilevel data. Data is considered multilevel if it has a grouped structure (like students --> school --> county), or it arises from repeated measurements. The modeler is often interested in studying the groups, in addition to the individual observations, in the data.

Here is a learning plan for better understanding the motivation, basic theory and assumptions, and applications for multilevel models. The end of this lesson plan should culminate in a couple blog posts, as well as a side project. 

## Learning Goals

After completing this learning plan, I will

- [ ] Know the differences between mixed effects, multilevel, and hierarchical models
- [ ] Understand use cases of multilevel models
- [ ] Be comfortable with basic MLM math theory
- [ ] Be able to describe error structure of MLMs
- [ ] Understand MLM model assumptions and diagnostics
- [ ] Have created a glossary of key MLM terminology
- [ ] Be familiar with packages for implementating mixed/multilevel models in R 

## Literature 

#### Online resources
        
- [ ] [Introduction from StatsTutor](http://www.statstutor.ac.uk/resources/uploaded/multilevelmodelling.pdf)
- [ ] [Math-oriented lecture](http://www2.stat.duke.edu/~sayan/Sta613/2018/lec/LMM.pdf)

#### Books 

- [ ] _Data Analysis Using Regression and Multilevel/Hierarchical Models_
    - [x] Chapter 1: Background on MLM
    - [ ] Chapter 11: Multilevel Structures
    - [ ] Chapter 12: Multilevel Linear Model Basics
    - [ ] Chapter 13: Varying Slopes, Non-Nested Models, and Other Complexities

#### Applications

- Real estate
    - [ ] [Wikipedia: Hedonic Regression](https://en.wikipedia.org/wiki/Hedonic_regression)
    - [ ] [Estimation of Hedonic Models Using a Multilevel Approach](https://link.springer.com/content/pdf/10.1007/BF03399271.pdf) (real estate)
    - [ ] [hedonic residential rents for land use and transport simulation](https://www.jtlu.org/index.php/jtlu/article/download/117/117)

## Exercises

Blogs 
- [ ] purpose of MLMs
- [ ] assumptions of MLMs
- [ ] difference between fixed and random effect
- [ ] difference between MLE and REML
- [ ] diagnostics of MLMs

Complete projects
- [ ] Predicting rent based on housing data
- [ ] Project 2
