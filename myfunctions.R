# author : Natasha Ting
# purpose: some functions to be used to describe regression for ME314 class


# this function prints out the coefficients of a regression model pretty
describe_coef <- function(regression, x) {
  
  num_of_var = length(colnames(regression$model))
  
  if (x==1) {
    sprintf("Intercept of model is %f", 
            as.numeric(regression$coefficients[x]))
  }
  
  else if (x > num_of_var){
    sprintf("Error. There are only %s predictors in your model. ", num_of_var)
  }
  
  else{
    sprintf("Coefficient '%s' has a slope of %f. It is a %s variable. ", 
            colnames(regression$model)[x], as.numeric(regression$coefficients[x]), class(colnames(regression$model)[x]))
  }
  
}