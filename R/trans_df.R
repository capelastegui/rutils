#transpose a data frame, assign type - needs homogeneous column types
trans_df<-function(.data,type=NA,extractNames=FALSE)
{
  tmpData <- .data
  if(extractNames)
  {
    tmpNames<-.data[,1]
    tmpData <- tmpData[,-1]
  }
  result <- as.data.frame(t(tmpData),stringsAsFactors=FALSE)
  if(extractNames){colnames(result) <- tmpNames}
  if(!is.na(type)){result <- switch(type,character=result,
                                    factor=colwise(factor)(result),
                                    numeric=colwise(as.numeric)(result),
                                    logical=colwise(as.logical)(result))}
  result
}