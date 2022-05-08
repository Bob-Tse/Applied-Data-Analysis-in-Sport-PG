regEq <- function(lmObj, dig) {
  gsub(":", "*", 
       paste0(
         names(lmObj$model)[1]," = ",
         paste0(
           c(round(lmObj$coef[1], dig), round(sign(lmObj$coef[-1])*lmObj$coef[-1], dig)),
           c("", rep("*", length(lmObj$coef)-1)),
           paste0(c("", names(lmObj$coef)[-1]), c(ifelse(sign(lmObj$coef)[-1]==1," + "," - "), "")),
           collapse=""
         )
       )
  )
}