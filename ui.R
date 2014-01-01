
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(
  
  bootstrapPage(
    
    headerPanel("My App"),
    
    sidebarPanel(
  
      tabsetPanel(
        
        tabPanel("Marks Analyser",
                  
                 numericInput("Sub_1", label="Sub_1:", value = 0),
                 numericInput("Sub_2", label="Sub_2:", value = 0),
                 numericInput("Sub_3", label="Sub_3:", value = 0),
                 numericInput("Sub_4", label="Sub_4:", value = 0)
                 
                ),
        tabPanel("Semester GPA Analyser",
                 
                 numericInput("Sem_1", label="Sem 1:", value = 9),
                 numericInput("Sem_2", label="Sem 2:", value = 8),
                 numericInput("Sem_3", label="Sem 3:", value = 7),
                 numericInput("Sem_4", label="Sem 4:", value = 8),
                 numericInput("Sem_5", label="Sem 5:", value = 9),
                 numericInput("Sem_6", label="Sem 6:", value = 7),
                 numericInput("Sem_7", label="Sem 7:", value = 8),
                 numericInput("Sem_8", label="Sem 8:", value = 9)
                 
        )
        
        )
      
    ),
    
    
    mainPanel(
      
      tabsetPanel(
        
        
        tabPanel("Barplot", plotOutput("distPlot")),
        tabPanel("Lineplot", plotOutput("dist1Plot"))
      
    )
    
    ))
)