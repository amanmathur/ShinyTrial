
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyServer(function(input, output) {
   
 
     
    # generate and plot an rnorm distribution with the requested
    # number of observations
#     dist <- rnorm(input$obs)
#     hist(dist)
    
        output$distPlot <- renderPlot({
        sem_marks <- c(input$Sem_1, input$Sem_2, input$Sem_3, input$Sem_4, input$Sem_5, input$Sem_6, input$Sem_7, input$Sem_8)
        
        names(sem_marks) <- c("Sem_1", "Sem_2", "Sem_3", "Sem_4", "Sem_5", "Sem_6", "Sem_7", "Sem_8")
        
        barplot(sem_marks, names.arg=names(sem_marks))
       
        
      }) 
      
      output$dist1Plot <- renderPlot({
        sem_marks <- c(input$Sem_1, input$Sem_2, input$Sem_3, input$Sem_4, input$Sem_5, input$Sem_6, input$Sem_7, input$Sem_8)
        
        names(sem_marks) <- c("Sem_1", "Sem_2", "Sem_3", "Sem_4", "Sem_5", "Sem_6", "Sem_7", "Sem_8")
      
        plot(c(1:8),sem_marks, type="b")
        
        
        
      }) 
            
    
    
 
   
})

