library(tidytable)

BD_CAPITULOS<-read.csv2("CID-10-CAPITULOS.CSV", encoding = "UTF-8")
BD_CATEGORIAS<-read.csv2("CID-10-CATEGORIAS.CSV", encoding = "UTF-8")


BD_CATEGORIAS %>% mutate(LETRA=substr(CAT,1,1),
                         NUMERO=as.numeric(substr(CAT,2,3))) %>% 
  filter(LETRA=="A" &  NUMERO>=0 | LETRA=="B" & NUMERO<=99 | 
           LETRA=="I" &  NUMERO<=99 |
           LETRA=="J" & NUMERO<=99 | 
           LETRA=="M" & NUMERO<=99 ) %>% 
  filter(CAT %in% c("A15",
                    "A16",
                    # "A17",
                    # "A18",
                    # "A19",
                    # "J04",
                    # "J05",
                    # "J06",
                    "J09",
                    "J10",
                    "J11",
                    "J12",
                    "J13",
                    "J14",
                    "J15",
                    "J16",
                    "J17",
                    "J18",
                    "J20",
                    "J21",
                    "J22",
                    "J39",
                    "J40",
                    "J41",
                    "J42",
                    "J43",
                    "J44",
                    "J45",
                    "J46",
                    "J47",
                    "J60",
                    "J61",
                    "J62",
                    "J63",
                    "J64",
                    "J65",
                    "J68",
                    "J69",
                    "J70",
                    "J80",
                    "J81",
                    "J82",
                    "J84",
                    "J85",
                    "J86",
                    "J90",
                    "J91",
                    "J92",
                    "J93",
                    "J94",
                    "J95",
                    "J96",
                    "J98",
                    "J99")) %>% write.csv2("verificando_filtro_2.csv")


