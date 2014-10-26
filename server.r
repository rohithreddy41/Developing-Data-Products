
library(UsingR)
data(mtcars)

predictMileage <- function(input){
  
  fit <- lm(formula=mpg~wt+cyl+hp+am, data=mtcars)
  predict(fit, data.frame(wt=input$wt,cyl=input$cyl,hp=input$hp,am=input$am))
}
shinyServer(
  function(input, output) {
    
  
   
   output$Prediction <-  renderPrint({predictMileage(input)})
   
   
    
  }
)