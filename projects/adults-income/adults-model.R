library(lme4)

df <- read.table('https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data', 
                 sep=',',
                 stringsAsFactors=F)
                
names(df) <- c('age',
               'workclass', 
               'fnlwgt', 
               'education', 
               'education_num', 
               'marital_status', 
               'occupation', 
               'relationship',
               'race',
               'sex', 
               'capital_gain',
               'capital_loss',
               'hours_per_week',
               'native_country',
               'income')

str(df)

lmer('income ~ 