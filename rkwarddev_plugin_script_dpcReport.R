# RKWard plugin for the generation of reports from dPCR experiments. dPCRs can 
# be analyzed in R as described in Rödiger S, Burdukiewicz M, Blagodatskikh KA, 
# Schierack P. R as an Environment for the Reproducible Analysis of DNA 
# Amplification Experiments. The R Journal 2015;7:127–50. The dpcReport function
# from the dpcR package eases the creation of complete reports. This RKWard
# plugin enabels the access from the GUI menu.

require(rkwarddev)

local({
## Author names and contact information
about.info <- rk.XML.about(
  name = "dPCR report",
  author = c(
    person(given = "Stefan", family = "Roediger",
	    email = "Stefan.RSoediger@b-tu.de", 
	    role = c("aut","cre"))),
    about = list(desc = "GUI interface to generate reports from dPCR experiments.",
		  version = "0.0.1", url = "")
    )
    
## Help page
plugin.summary <- rk.rkh.summary(
  "Analysis of dPCR experiments."
  )

plugin.usage <- rk.rkh.usage(
  "Chose a data set for the dPCR report."
  )

## Dependencies
dependencies.info <- rk.XML.dependencies(dependencies = list(rkward.min = "0.6.3"), 
					  package = list(c(name = "dpcR", min = "0.1.4.0")))

## General settings

run.dpcReport.chk <- rk.XML.cbox(label = "Start dPCR report generation", value = "1", un.value = "0", chk = TRUE)

basic.settings <- rk.XML.row(
			      run.dpcReport.chk
			      )

full.dialog <- rk.XML.dialog(
  label = "dPCR report", basic.settings
  )

JS.calc <- rk.paste.JS(
  echo("dpcReport()\n")
  )

## Plugin skeleton generation

dpcRreport_menu <<-  rk.plugin.skeleton(
  about = about.info,
  dependencies = dependencies.info,
  xml = list(dialog = full.dialog),
  js = list(require = "dpcR",
	    calculate = JS.calc,
	    results.header = FALSE),
  rkh = list(plugin.summary, plugin.usage),
  pluginmap = list(
    name = "dpcReport",
    hierarchy = list("analysis", "dPCR report")),
  create=c("pmap","xml","js","desc", "rkh"),
  load = TRUE,
  overwrite = TRUE,
  show = TRUE
  )

})
    