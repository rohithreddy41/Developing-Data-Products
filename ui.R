


shinyUI(pageWithSidebar(
  headerPanel("Mileage Estimator"),
  sidebarPanel(
    numericInput('wt', 'Weight', value=''),
    numericInput('cyl', 'Cylinder', value=''),
    numericInput('hp', 'Horse Power', value=''),
    numericInput('am', 'Transmission Type',value=''),
  submitButton('Estimate Mileage')
    
  ),
  mainPanel(
   
    h4('Estimated Mileage'),
    verbatimTextOutput("Prediction")
    
  )
))