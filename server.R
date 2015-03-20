library(shiny)

shinyServer(
  function(input,output){
    calcControl <- reactive({input$numUsers%/%10+1*input$numUsers%%10})
    output$numControl <- renderText({calcControl()})
    
    calcRouter <- reactive({input$numUsers%/%5+1*input$numUsers%%5})
    output$numRouter <- renderText({calcRouter()})
    
    calcMCU <- reactive({if(input$mcu){input$numUsers%/%2 + 1*input$numUsers%%2} else{0}})
    output$numMCU <- renderText({calcMCU()})
    
    calcTotal <- reactive({calcControl() * input$controlCost + 
                             calcRouter() * input$routerCost +
                             calcMCU() * input$mcuCost})
    output$totalCost <- renderText({calcTotal()})
  }
  
)