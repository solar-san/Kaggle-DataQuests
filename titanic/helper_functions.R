require(
  tidyverse,
  warn.conflicts = F,
  quietly = F
)

get_variable_list <- function(df, numerical = TRUE) {
    
  # extract a list of variables from df and their names 
  variables_list <- lapply(df, class)
  variable_names <- names(variables_list)
  
  # search inside each variable for "chr" or "Factor" and create an index
  
  categorical_idx <- c()
  
  for(variable_class in variables_list) {
    categorical_idx <- c(
      categorical_idx,
      ifelse(
        variable_class == "character" | variable_class == "Factor",
        T,
        F
      )
    )
  }
  if (numerical == FALSE) {
    return(
      names(variables_list[categorical_idx])
    )
  } else {
    return(
      names(variables_list[!categorical_idx])
    )
  }
}

#### GET DUMMY

get_dummy <- function(df, skip = NA) {
  require(
    tidyverse,
    warn.conflicts = F,
    quietly = F
  )
  
  # extract a list of variables from df and their names 
  variables_list <- lapply(df, class)
  variable_names <- names(variables_list)
  
  # search inside each variable for "chr" or "Factor" and create an index
  
  categorical_idx <- c()
  
  for(variable_class in variables_list) {
    categorical_idx <- c(
      categorical_idx,
      ifelse(
        variable_class == "character" | variable_class == "Factor",
        T,
        F
      )
    )
  }
  
  # for each categorical variable:
  #   1. seach and store their level.
  #     - Need to address variable that just cannot be converted to categorical, such as a variable that has too many levels.
  #     - This can be addressed by printing an error
  #   2. create a dummy for each level.
  #   3. modify the original df variable with the corresponding dummy
  #     a. erase original variable
  #     b. replace with df of dummies
  #     
  for(variable in variables_list[categorical_idx]) {
    
  }
  

  
  
  return(
    )
  
}