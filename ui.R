input.colors = c("red", "blue", "green")

shinyUI(bootstrapPage(
  
  
  sidebarPanel(
    
    # X Value Input
    sliderInput(inputId = "xinput", 
                label = "X Value", 
                min=1, max=9, value=7),
    
    # Y Value Input
    sliderInput(inputId = "yinput", 
                label = "Y Value", 
                min=1, max=9, value=7),
    
    # Text Input
    textInput("pch", "Caption:", "Hello World") ,
    
    # Color Drop Down    
    selectInput(inputId = "colors",
                label = "Select Color",
                input.colors)
    ),
  
  # Plot it 
  mainPanel(div(align = "center",
                plotOutput(outputId = "main_plot", height = "500px", width="600px"))
  )
  
))
