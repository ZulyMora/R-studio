
setwd( "D:\\Datos\\Desktop\\Cacao Julio final\\Cacao 2025\\2024-2025\\")
install.packages("bibliometrix")
library(bibliometrix)

Sco = convert2df("scopus.bib", dbsource = "scopus", format = "bibtex")
Wos = convert2df("wos.bib", dbsource = "wos", format = "bibtex")

ScoWos = mergeDbSources(Sco, Wos, remove.duplicated = TRUE)
dim(ScoWos)

# install.packages("openxlsx") # if you don't have it installed
class(SW)
library(readxl)

library(openxlsx)
write.xlsx(ScoWos, file = "SW_alfre.xlsx")
biblioshiny()




