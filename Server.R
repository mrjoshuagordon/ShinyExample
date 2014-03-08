library(shiny)

shinyServer(function(input, output) {
  
  output$main_plot <- renderPlot({
    
    # Create Empty Plot Area
    plot(c(0,10), c(0,10), type="n", xaxt="n", yaxt="n", xlab="", ylab="")
    
    # Set the colors to gray and red    
    u <- par("usr") 
    rect(u[1], u[3], u[2], u[4], col = "grey90", border = "black")  
    
    # User input and coordinates 
    text(input$xinput, input$yinput, labels=input$pch,cex=2,col = input$colors)
    
    
  })
})