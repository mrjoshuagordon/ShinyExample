input.colors = c("red", "blue", "green")

shinyUI(bootstrapPage(
  
  
  sidebarPanel(
    
    sliderInput(inputId = "xinput", 
                label = "X Value", 
                min=1, max=9, value=7),
    
    sliderInput(inputId = "yinput", 
                label = "Y Value", 
                min=1, max=9, value=7),
    
    textInput("pch", "Caption:", "") ,
    
    selectInput(inputId = "colors",
                label = "Select Color",
                input.colors)
    
    
  )
  
  ,
  
  mainPanel(div(align = "center",
                plotOutput(outputId = "main_plot", height = "500px", width="600px"))
  )
  
))
