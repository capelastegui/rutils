require(plyr)
# apply factor again to a data frame
refactor <- function(data) {
    colwise(function(col) {
        if (is.factor(col)) 
            factor(col) else col
    })(data)
} 
