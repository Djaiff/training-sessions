library(shiny)
library(futile.logger)
flog.threshold("DEBUG"); Sys.setenv(TZ = "Europe/Paris")

var_ui <- {
  flog.debug("Evaluation of a variable outside the UI")
  2
}
shinyUI(fluidPage(
  div("My global variable is equal to", var1),
  div("My var out is equal to", textOutput(outputId = "var_out"))
))

