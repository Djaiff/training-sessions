var_out <- {
  flog.debug("Evaluation of a variable outside the server")
  1
}

function(input, output) {
  var_in <- {
    flog.debug("Evaluation of a variable in the server")
  }
  
  var_out <- 2
  
  output$var_out <- renderText(var_out)
}
