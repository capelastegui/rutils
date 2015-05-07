require(plyr)
# apply factor again to columns data frame - useful after subsetting
refactor <- function(data) {
    colwise(function(col) {
        if (is.factor(col)) 
            factor(col) else col
    })(data)
} 
