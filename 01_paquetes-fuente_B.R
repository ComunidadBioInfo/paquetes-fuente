# Texto sin acentos

#' Crea un directorio temporal y dentro de el haz los siguientes ejercicios
## Antes de realizar cada instalacion, reinicia tu sesion de R para evitar
## errores debido a la instalacion previa

tmp_lib <- "/tmp/my-library"
dir.create(tmp_lib)

#' Instala el paquete 'ps' desde su codigo fuente en CRAN
#' Pista: usa el argumento 'type' dentro de la funcion install.packages()
install.packages("ps", type = "source", lib = tmp_lib)
packageVersion("ps")

#' Carga el paquete desde su ubicacion en el directorio temporal y trata de
#' ejecutar la funcion ps()
library(ps, lib.loc = tmp_lib)
ps()

#' Instala la version de desarrollo del paquete 'ps'
devtools::install_dev("ps", lib = tmp_lib)

# O usa
devtools::install_github("r-lib/ps", lib = tmp_lib)

# Que version se instalo?
library(ps, lib.loc = tmp_lib)
packageVersion("ps")

#' Instala la version 1.2.0 del paquete 'ps' desde CRAN
devtools::install_version("ps", "1.2.0", lib = tmp_lib)
library(ps, lib.loc = tmp_lib)
sessioninfo::package_info("ps")

packageVersion("ps")

#' Actividad adicional
## Instala la version de codigo fuente de 'git2r'
## git2r tiene dependencias mas complejas y toma mas tiempo en compilar
## pero todo debe instalarse sin problemas.
