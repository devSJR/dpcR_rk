Status of the dpcR package

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/dpcR)](http://cran.r-project.org/web/packages/dpcR)
[![Downloads](http://cranlogs.r-pkg.org/badges/dpcR)](http://cran.rstudio.com/package=dpcR)
[![Build Status](https://api.travis-ci.org/michbur/dpcR.png)](https://travis-ci.org/michbur/dpcR)


====
RKWard plugin for the report generation of digital PCR experiments by dpcReport from the dpcR package. 
The most current version of this plugin is available [on github](https://raw.githubusercontent.com/devSJR/dpcR_rk/master/rkwarddev_plugin_script_dpcReport.R). 

To install it temporarely in RKWard open the script in RKWard:

```rkwarddev
# This plugin requires the installation of rkwarddev and dpcR (v. 1.4.0 or later)
# Install rkwarddev and dpcR, if you haven't already. It is recommended to use the
# dpcR version from CRAN.
# The installation of rkwarddev is described at:
# http://api.kde.org/doc/rkwardplugins/rkwarddev.html

# The development version of dpcR can be installed from git.

library(devtools)
install_github("michbur/dpcR")
```

```RKWard
To start the GUI in RKWard:

1. Menu -> File -> Open R script file (Ctrl + O)
2. Paste the URL
   https://raw.githubusercontent.com/devSJR/dpcR_rk/master/rkwarddev_plugin_script_dpcReport.R
3. Run the script
```

![dpcReport RKWard GUI](https://raw.githubusercontent.com/devSJR/dpcR_rk/master/dpcR_rk.png)