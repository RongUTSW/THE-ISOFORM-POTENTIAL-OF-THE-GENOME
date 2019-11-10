load("~/Downloads/m.counts.RData")
object.v <- ls()

object.v
# [1] "chicken.length"         "chicken.M"              "chicken.M.count"        "filter.aa.length"      
# [5] "filter.M.count"         "horse.length"           "horse.M"                "horse.M.count"         
# [9] "human.length"           "human.M"                "human.M.count"          "mouse.length"          
# [13] "mouse.M"                "mouse.M.count"          "pig.length"             "pig.M"                 
# [17] "pig.M.count"            "platypus.length"        "platypus.M"             "platypus.M.count"      
# [21] "rat.length"             "rat.M"                  "rat.M.count"            "rhesus_macaque.length" 
# [25] "rhesus_macaque.M"       "rhesus_macaque.M.count" "zebrafish.length"       "zebrafish.M"           
# [29] "zebrafish.M.count"    

species <- c("human", "rhesus_macaque","horse", "pig", "platypus", "chicken", 
             "mouse", "rat", "zebrafish", "filter")

human.length <- unlist(human.length)
all.protein.length <- data.frame(name=names(human.length), length=human.length)
all.protein.length$species <- "human"

rhesus_macaque.length <- unlist(rhesus_macaque.length)
tmp <- data.frame(name=names(rhesus_macaque.length), length=rhesus_macaque.length)
tmp$species <- "rhesus_macaque"
all.protein.length <- rbind(all.protein.length, tmp)
dim(all.protein.length) # [1] 158036      3

horse.length <- unlist(horse.length)
tmp <- data.frame(name=names(horse.length), length=horse.length)
tmp$species <- "horse"
head(tmp)
all.protein.length <- rbind(all.protein.length, tmp)
dim(all.protein.length) # [1] 202962      3

pig.length <- unlist(pig.length)
tmp <- data.frame(name=names(pig.length), length=pig.length)
tmp$species <- "pig"
head(tmp)
all.protein.length <- rbind(all.protein.length, tmp)
dim(all.protein.length) # [1] 247888      3
table(all.protein.length$species)

platypus.length <- unlist(platypus.length)
tmp <- data.frame(name=names(platypus.length), length=platypus.length)
tmp$species <- "platypus"
head(tmp)
all.protein.length <- rbind(all.protein.length, tmp)
dim(all.protein.length) # [1] 271467      3

chicken.length <- unlist(chicken.length)
tmp <- data.frame(name=names(chicken.length), length=chicken.length)
tmp$species <- "chicken"
head(tmp)
all.protein.length <- rbind(all.protein.length, tmp)
dim(all.protein.length) # [1] 299907      3
table(all.protein.length$species)

mouse.length <- unlist(mouse.length)
tmp <- data.frame(name=names(mouse.length), length=mouse.length)
tmp$species <- "mouse"
head(tmp)
all.protein.length <- rbind(all.protein.length, tmp)
dim(all.protein.length) # [1] 367416      3
table(all.protein.length$species)

rat.length <- unlist(rat.length)
tmp <- data.frame(name=names(rat.length), length=rat.length)
tmp$species <- "rat"
head(tmp)
all.protein.length <- rbind(all.protein.length, tmp)
dim(all.protein.length) # [1] 396480      3
table(all.protein.length$species)

zebrafish.length <- unlist(zebrafish.length)
tmp <- data.frame(name=names(zebrafish.length), length=zebrafish.length)
tmp$species <- "zebrafish"
head(tmp)
all.protein.length <- rbind(all.protein.length, tmp)
dim(all.protein.length) # [1] 448376      3

all.protein.length$species <- as.factor(all.protein.length$species)
all.protein.length$species <- factor(all.protein.length$species, 
                                     levels = c("human", "rhesus_macaque" ,"horse"  ,"pig" , "platypus","chicken" ,"mouse", "rat", "zebrafish"))
species

library(ggplot2)
# ggplot(all.protein.length, aes(x=length, fill=species)) + geom_histogram(color="black", binwidth=100, alpha=.8,position = "stack") + labs(x = "Protein Length", y="Number of Protein", title="     ",fill="Species") + xlim(0, 3000) # , title="                       Stacked histogram of Time-to-event\n (n=5,461 complete cases)"
# ggplot(all.protein.length, aes(x=length, fill=species)) + geom_histogram(color="black", binwidth=100, alpha=.8,position = "identity") + labs(x = "Protein Length", y="Number of Protein", title="     ",fill="Species") + xlim(0, 3000) # , title="                       Stacked histogram of Time-to-event\n (n=5,461 complete cases)"

ggplot(all.protein.length) + geom_freqpoly(aes(x = length,
                                               y = ..density.., colour = species, linetype=species))+xlim(0,3000) + 
  labs(x = "Protein Length\n", title="     \n                                               Distribution of Protein Length By Species        ")
## this figure is saved as "Protein_Length_by_Species.pdf"
dim(all.protein.length) # [1] 448376      3
save(all.protein.length, file="all_protein_length_r448376.RData")
## ----------------------------------------------

human.M.count <- unlist(human.M.count)
all.protein.M.count <- data.frame(name=names(human.M.count), Ms.count=human.M.count)
all.protein.M.count$species <- "human"

rhesus_macaque.M.count <- unlist(rhesus_macaque.M.count)
tmp <- data.frame(name=names(rhesus_macaque.M.count), Ms.count=rhesus_macaque.M.count)
tmp$species <- "rhesus_macaque"
all.protein.M.count <- rbind(all.protein.M.count, tmp)
dim(all.protein.M.count) # [1] 158036      3

horse.M.count <- unlist(horse.M.count)
tmp <- data.frame(name=names(horse.M.count), Ms.count=horse.M.count)
tmp$species <- "horse"
head(tmp)
all.protein.M.count <- rbind(all.protein.M.count, tmp)
dim(all.protein.M.count) # [1] 202962      3

pig.M.count <- unlist(pig.M.count)
tmp <- data.frame(name=names(pig.M.count), Ms.count=pig.M.count)
tmp$species <- "pig"
head(tmp)
all.protein.M.count <- rbind(all.protein.M.count, tmp)
dim(all.protein.M.count) # [1] 248845      3
table(all.protein.M.count$species)

platypus.M.count <- unlist(platypus.M.count)
tmp <- data.frame(name=names(platypus.M.count), Ms.count=platypus.M.count)
tmp$species <- "platypus"
head(tmp)
all.protein.M.count <- rbind(all.protein.M.count, tmp)
dim(all.protein.M.count) # [1] 272424      3

chicken.M.count <- unlist(chicken.M.count)
tmp <- data.frame(name=names(chicken.M.count), Ms.count=chicken.M.count)
tmp$species <- "chicken"
head(tmp)
all.protein.M.count <- rbind(all.protein.M.count, tmp)
dim(all.protein.M.count) # [1] 300864      3
table(all.protein.M.count$species)

mouse.M.count <- unlist(mouse.M.count)
tmp <- data.frame(name=names(mouse.M.count), Ms.count=mouse.M.count)
tmp$species <- "mouse"
head(tmp)
all.protein.M.count <- rbind(all.protein.M.count, tmp)
dim(all.protein.M.count) # [1] 368373      3
table(all.protein.M.count$species)

rat.M.count <- unlist(rat.M.count)
tmp <- data.frame(name=names(rat.M.count), Ms.count=rat.M.count)
tmp$species <- "rat"
head(tmp)
all.protein.M.count <- rbind(all.protein.M.count, tmp)
dim(all.protein.M.count) # [1] 397437      3
table(all.protein.M.count$species)

zebrafish.M.count <- unlist(zebrafish.M.count)
tmp <- data.frame(name=names(zebrafish.M.count), Ms.count=zebrafish.M.count)
tmp$species <- "zebrafish"
head(tmp)
all.protein.M.count <- rbind(all.protein.M.count, tmp)
dim(all.protein.M.count) # [1] 448376      3

all.protein.M.count$species <- as.factor(all.protein.M.count$species)
all.protein.M.count$species <- factor(all.protein.M.count$species, 
                                     levels = c("human", "rhesus_macaque" ,"horse"  ,"pig" , "platypus","chicken" ,"mouse", "rat", "zebrafish"))
species

dim(all.protein.M.count) # [1] 449333      3

save(all.protein.M.count, file="all_protein_M_count_r449333.RData")

## ------------------
all.length.with.M.count <- merge(all.protein.length, all.protein.M.count, 
                                 by=intersect(names(all.protein.length), names(all.protein.M.count)), all.x = T)
dim(all.length.with.M.count) # [1] 448376      4

all.length.with.M.count$Ms.count.normalized.by.length <- all.length.with.M.count$Ms.count/all.length.with.M.count$length
dim(all.length.with.M.count) # [1] 448376      5

ggplot(all.length.with.M.count) + geom_freqpoly(aes(x = Ms.count.normalized.by.length,
                                               y = ..density.., colour = species, linetype=species))+xlim(0,0.1) + 
  labs(x = "Number of Ms Normalized by Protein Length\n", title="     \n                                               Distribution of Normalized Ms Counts By Species        ")
save(all.length.with.M.count, file="all_length_with_M_count_r448376.RData")

## --------------------- Distribution of Ms Location:
ls()

table(unlist(lapply(human.M, length)))
#     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19    20    21    22 
# 10763 12824 11923 10153  8286  6931  5842  4620  4277  3590  3244  2870  2535  2218  2123  1797  1459  1210  1147   940   753   720 
#  23    24    25    26    27    28    29    30    31    32    33    34    35    36    37    38    39    40    41    42    43    44 
# 729   612   543   522   433   368   350   341   283   238   239   246   155   166   121   148   144   101    96    86    78    74 
# 45    46    47    48    49    50    51    52    53    54    55    56    57    58    59    60    61    62    63    64    65    66 
# 51    57    63    46    34    35    28    44    73    38    65    50    36    30    36    27    36     9     9    16    19    19 
# 67    68    69    70    71    72    73    74    75    76    77    78    79    80    81    82    83    84    85    86    87    88 
# 17    15    14    25    33     2     4    10     9    10    17     8     8    19     4     9     7    10    10     5     2     1 
# 89    90    91    92    93    94    95    96    97    99   100   101   102   103   105   106   107   108   109   111   112   113 
#  1     6     6     1     3     1     2     1     2     3     3     1     5     2     1     4     1     1     1     6     1     2 
# 114   115   116   117   118   119   120   121   122   123   125   128   129   130   131   132   135   136   137   138   139   141 
#   6     1     3     3     3     3     3     1     2     2     1     3     1     6     1     2     1     1     2     4     2     2 
# 143   145   146   155   156   158   159   162   163   164   165   185   195   196   204   234   237   256   334   336   358   383 
#   1     4     1     1     1     2     2     2     1     1     1     2     1     1     2     2     3     1     2     1     1     1 
# 398   408 
#   2     1 

human.M[1:3]
human.M.df <- data.frame(name=unlist(names(human.M)))
human.M.df$name <- as.character(human.M.df$name)
dim(human.M.df) # [1] 107502      1
human.M.df$M.count <- unlist(lapply(human.M, length))
dim(human.M.df) # [1] 107502      2

human.M.df.long <- data.frame(name= unlist( apply(human.M.df,1, function(x){
  return(rep(x[1], x[2])) 
})) ) 
human.M.df.long$location <- unlist(human.M)
dim(human.M.df.long) # [1] 922592      2
head(human.M.df.long)
human.M.df.long[1:10,]
human.M.df.long$species <- "human"
dim(human.M.df.long) # [1] 922592      3
all.species.M.location <- human.M.df.long
## -------------
rhesus_macaque.M.df <- data.frame(name=unlist(names(rhesus_macaque.M)))
rhesus_macaque.M.df$name <- as.character(rhesus_macaque.M.df$name)
dim(rhesus_macaque.M.df) # [1] 48291     1
rhesus_macaque.M.df$M.count <- unlist(lapply(rhesus_macaque.M, length))
dim(rhesus_macaque.M.df) # [1] 48291     2

tmp.M.df.long <- data.frame(name= unlist( apply(rhesus_macaque.M.df,1, function(x){
  return(rep(x[1], x[2])) 
})) ) 
tmp.M.df.long$location <- unlist(rhesus_macaque.M)
dim(tmp.M.df.long) # [1] 651439      2
head(tmp.M.df.long)
tmp.M.df.long[1:10,]
tmp.M.df.long$species <- "rhesus_macaque"
dim(tmp.M.df.long) # [1] 651439      3
all.species.M.location <- rbind(all.species.M.location, tmp.M.df.long)
dim(all.species.M.location) # [1] 1574031       3
table(all.species.M.location$species)
# human rhesus_macaque 
# 922592         651439 

## -------------
horse.M.df <- data.frame(name=unlist(names(horse.M)))
horse.M.df$name <- as.character(horse.M.df$name)
dim(horse.M.df) # [1] 44805     1
horse.M.df$M.count <- unlist(lapply(horse.M, length))
dim(horse.M.df) # [1] 44805     2

tmp.M.df.long <- data.frame(name= unlist( apply(horse.M.df,1, function(x){
  return(rep(x[1], x[2])) 
})) ) 
tmp.M.df.long$location <- unlist(horse.M)
dim(tmp.M.df.long) # [1] 625025      2
head(tmp.M.df.long)
tmp.M.df.long[1:10,]
tmp.M.df.long$species <- "horse"
dim(tmp.M.df.long) # [1] 625025      3
all.species.M.location <- rbind(all.species.M.location, tmp.M.df.long)
dim(all.species.M.location) # [1] 2199056       3
table(all.species.M.location$species)

## -------------
pig.M.df <- data.frame(name=unlist(names(pig.M)))
pig.M.df$name <- as.character(pig.M.df$name)
dim(pig.M.df) # [1] 45485     1
pig.M.df$M.count <- unlist(lapply(pig.M, length))
dim(pig.M.df) # [1] 45485     2

tmp.M.df.long <- data.frame(name= unlist( apply(pig.M.df,1, function(x){
  return(rep(x[1], x[2])) 
})) ) 
tmp.M.df.long$location <- unlist(pig.M)
dim(tmp.M.df.long) # [1] 580101      2
head(tmp.M.df.long)
tmp.M.df.long[1:10,]
tmp.M.df.long$species <- "pig"
dim(tmp.M.df.long) # [1] 580101      3
all.species.M.location <- rbind(all.species.M.location, tmp.M.df.long)
dim(all.species.M.location) # [1] 2779157       3
table(all.species.M.location$species)

## -------------
platypus.M.df <- data.frame(name=unlist(names(platypus.M)))
platypus.M.df$name <- as.character(platypus.M.df$name)
dim(platypus.M.df) # [1] 22504     1
platypus.M.df$M.count <- unlist(lapply(platypus.M, length))
dim(platypus.M.df) # [1] 22504     2

tmp.M.df.long <- data.frame(name= unlist( apply(platypus.M.df,1, function(x){
  return(rep(x[1], x[2])) 
})) ) 
tmp.M.df.long$location <- unlist(platypus.M)
dim(tmp.M.df.long) # [1] 188858      2
head(tmp.M.df.long)
tmp.M.df.long[1:10,]
tmp.M.df.long$species <- "platypus"
dim(tmp.M.df.long) # [1] 188858      3
all.species.M.location <- rbind(all.species.M.location, tmp.M.df.long)
dim(all.species.M.location) # [1] 2968015       3
table(all.species.M.location$species)

## -------------
chicken.M.df <- data.frame(name=unlist(names(chicken.M)))
chicken.M.df$name <- as.character(chicken.M.df$name)
dim(chicken.M.df) # 
chicken.M.df$M.count <- unlist(lapply(chicken.M, length))
dim(chicken.M.df) # 

tmp.M.df.long <- data.frame(name= unlist( apply(chicken.M.df,1, function(x){
  return(rep(x[1], x[2])) 
})) ) 
tmp.M.df.long$location <- unlist(chicken.M)
dim(tmp.M.df.long) # 
head(tmp.M.df.long)
tmp.M.df.long[1:10,]
tmp.M.df.long$species <- "chicken"
dim(tmp.M.df.long) # 
all.species.M.location <- rbind(all.species.M.location, tmp.M.df.long)
dim(all.species.M.location) # 
table(all.species.M.location$species)

## -------------
mouse.M.df <- data.frame(name=unlist(names(mouse.M)))
mouse.M.df$name <- as.character(mouse.M.df$name)
dim(mouse.M.df) #
mouse.M.df$M.count <- unlist(lapply(mouse.M, length))
dim(mouse.M.df) # 

tmp.M.df.long <- data.frame(name= unlist( apply(mouse.M.df,1, function(x){
  return(rep(x[1], x[2])) 
})) ) 
tmp.M.df.long$location <- unlist(mouse.M)
dim(tmp.M.df.long) # 
head(tmp.M.df.long)
tmp.M.df.long[1:10,]
tmp.M.df.long$species <- "mouse"
dim(tmp.M.df.long) # 
all.species.M.location <- rbind(all.species.M.location, tmp.M.df.long)
dim(all.species.M.location) # 
table(all.species.M.location$species)

## -------------
rat.M.df <- data.frame(name=unlist(names(rat.M)))
rat.M.df$name <- as.character(rat.M.df$name)
dim(rat.M.df) # 
rat.M.df$M.count <- unlist(lapply(rat.M, length))
dim(rat.M.df) # 

tmp.M.df.long <- data.frame(name= unlist( apply(rat.M.df,1, function(x){
  return(rep(x[1], x[2])) 
})) ) 
tmp.M.df.long$location <- unlist(rat.M)
dim(tmp.M.df.long) # 
head(tmp.M.df.long)
tmp.M.df.long[1:10,]
tmp.M.df.long$species <- "rat"
dim(tmp.M.df.long) # 
all.species.M.location <- rbind(all.species.M.location, tmp.M.df.long)
dim(all.species.M.location) # 
table(all.species.M.location$species)

## -------------
zebrafish.M.df <- data.frame(name=unlist(names(zebrafish.M)))
zebrafish.M.df$name <- as.character(zebrafish.M.df$name)
dim(zebrafish.M.df) # 
zebrafish.M.df$M.count <- unlist(lapply(zebrafish.M, length))
dim(zebrafish.M.df) # 

tmp.M.df.long <- data.frame(name= unlist( apply(zebrafish.M.df,1, function(x){
  return(rep(x[1], x[2])) 
})) ) 
tmp.M.df.long$location <- unlist(zebrafish.M)
dim(tmp.M.df.long) # 
head(tmp.M.df.long)
tmp.M.df.long[1:10,]
tmp.M.df.long$species <- "zebrafish"
dim(tmp.M.df.long) # 
all.species.M.location <- rbind(all.species.M.location, tmp.M.df.long)
dim(all.species.M.location) # 

all.species.M.location$species <- as.factor(all.species.M.location$species)
all.species.M.location$species <- factor(all.species.M.location$species, 
                                         levels=c("human", "rhesus_macaque" ,"horse", "pig" , "platypus" ,"chicken","mouse","rat","zebrafish"))
table(all.species.M.location$species)
#  human rhesus_macaque          horse            pig       platypus        chicken          mouse            rat      zebrafish 
# 922592         651439         625025         580101         188858         393559         658465         338343         644770 

dim(all.species.M.location) # [1] 5003152       3
save(all.species.M.location, file="all_species_M_location_r5003152.RData")

tmp <- merge(all.species.M.location, all.length.with.M.count, 
             by=intersect(names(all.species.M.location), names(all.length.with.M.count)), all.x = T)
dim(tmp) # [1] 5003152       6
head(tmp)
tmp[1:10,]
#                 name species location length Ms.count Ms.count.normalized.by.length
# 1  ENSP00000000233.5   human       22    180        6                    0.03333333
# 2  ENSP00000000233.5   human        1    180        6                    0.03333333
# 3  ENSP00000000233.5   human       18    180        6                    0.03333333
# 4  ENSP00000000233.5   human      110    180        6                    0.03333333
# 5  ENSP00000000233.5   human      130    180        6                    0.03333333
# 6  ENSP00000000233.5   human      134    180        6                    0.03333333
# 7  ENSP00000000412.3   human      173    277        6                    0.02166065
# 8  ENSP00000000412.3   human        1    277        6                    0.02166065
# 9  ENSP00000000412.3   human      119    277        6                    0.02166065
# 10 ENSP00000000412.3   human      142    277        6                    0.02166065
all.species.M.location.comb <- tmp
dim(all.species.M.location.comb) # [1] 5003152       6
save(all.species.M.location.comb, file="all_species_M_location_comb_r5003152c6.RData")

all.species.M.location.comb$normalized.location <- all.species.M.location.comb$location/all.species.M.location.comb$length

ggplot(all.species.M.location.comb) + geom_freqpoly(binwidth = 0.01, aes(x = normalized.location,
                                               y = ..density.., colour = species, linetype=species))  + 
  labs(x = "Normalized Location of Ms\n", title="     \n                                               Location of Ms after Normalized by Protein Length        ") + geom_vline(xintercept = 0.04,linetype="dotted")
## this figure is saved as "Normalized Ms Location_binwidth_dot01.pdf"

head(all.species.M.location.comb)
#                name species location length Ms.count Ms.count.normalized.by.length normalized.location
# 1 ENSP00000000233.5   human       22    180        6                    0.03333333         0.122222222
# 2 ENSP00000000233.5   human        1    180        6                    0.03333333         0.005555556
# 3 ENSP00000000233.5   human       18    180        6                    0.03333333         0.100000000
# 4 ENSP00000000233.5   human      110    180        6                    0.03333333         0.611111111
# 5 ENSP00000000233.5   human      130    180        6                    0.03333333         0.722222222
# 6 ENSP00000000233.5   human      134    180        6                    0.03333333         0.744444444
# 
table(all.species.M.location.comb$normalized.location<0.04)
#   FALSE    TRUE 
# 3942392  480659 

selected.M.location <- all.species.M.location.comb[which(all.species.M.location.comb$normalized.location <0.04),]
dim(selected.M.location) # [1] 480659      7
save(selected.M.location, file="selected_M_location_r480659c7.RData")
write.csv(selected.M.location, file="selected_M_location_r480659c7.csv", row.names = F)

## ----------- get the box plot by length group:
summary(unlist(selected.M.location$length))
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 26.0   236.0   440.0   680.2   790.0 35991.0 

selected.M.location$length.group <- "26-100"
selected.M.location$length.group[which(selected.M.location$length%in%c(101:200))] <- "101-200"
selected.M.location$length.group[which(selected.M.location$length%in%c(201:300))] <- "201-300"
selected.M.location$length.group[which(selected.M.location$length%in%c(301:400))] <- "301-400"
selected.M.location$length.group[which(selected.M.location$length%in%c(401:500))] <- "401-500"
selected.M.location$length.group[which(selected.M.location$length%in%c(501:600))] <- "501-600"
selected.M.location$length.group[which(selected.M.location$length%in%c(601:700))] <- "601-700"
selected.M.location$length.group[which(selected.M.location$length%in%c(701:800))] <- "701-800"
selected.M.location$length.group[which(selected.M.location$length%in%c(801:900))] <- "801-900"
selected.M.location$length.group[which(selected.M.location$length%in%c(901:1000))] <- "901-1000"
selected.M.location$length.group[which(selected.M.location$length%in%c(1001:1100))] <- "1001-1100"
selected.M.location$length.group[which(selected.M.location$length%in%c(1101:1200))] <- "1101-1200"
selected.M.location$length.group[which(selected.M.location$length%in%c(1201:1300))] <- "1201-1300"
selected.M.location$length.group[which(selected.M.location$length%in%c(1301:1400))] <- "1301-1400"
selected.M.location$length.group[which(selected.M.location$length%in%c(1401:1500))] <- "1401-1500"
selected.M.location$length.group[which(selected.M.location$length>1500)] <- ">1500"
table(selected.M.location$length.group)

selected.M.location$length.group <- factor(selected.M.location$length.group,
                                           levels=c("26-100","101-200","301-400","401-500","501-600","601-700","701-800", "801-900","901-1000",
                                                    "1001-1100","1101-1200","1201-1300","1301-1400","1401-1500",">1500"))

ggplot(na.omit(selected.M.location), aes(x=length.group, y=Ms.count, fill=species)) + 
  geom_boxplot() + labs(x = "\n Protein Length Groups\n", y="\n Number of Ms", title="     \n                                 ") + 
  facet_wrap(~species, scale="free")

min(all.species.M.location.comb$Ms.count, na.rm = T) # [1] 1
sapply(unique(all.species.M.location.comb$name))

## ------------------------
tmp <- all.species.M.location.comb
table(tmp$location==1)
#   FALSE    TRUE 
# 4606606  396546
tmp <- tmp[-which(tmp$location==1),]
dim(tmp) # [1] 4606606       7

tmp.unique <- unique(tmp[,c(1,2,4:6)])
dim(tmp.unique) # [1] 426047      5
# min.location <- apply(tmp.unique, 1, function(x){
#   sub.data <- tmp[which(tmp[,1]==x[1] &
#                           tmp[,2]==x[2] &
#                           tmp[,4]==x[3] &
#                           tmp[,5]==x[4] &
#                           tmp[,6]==x[5]),]
#   return(min(sub.data$location, na.rm = T))
# })
tmp.test <- tmp[order(tmp[,2], tmp[,1], tmp[,4,], tmp[,5],tmp[,6], tmp[,3]),]
head(tmp.test)
tmp.test[1:10,]
#                 name species location length Ms.count Ms.count.normalized.by.length normalized.location
# 3  ENSP00000000233.5   human       18    180        6                    0.03333333           0.1000000
# 1  ENSP00000000233.5   human       22    180        6                    0.03333333           0.1222222
# 4  ENSP00000000233.5   human      110    180        6                    0.03333333           0.6111111
# 5  ENSP00000000233.5   human      130    180        6                    0.03333333           0.7222222
# 6  ENSP00000000233.5   human      134    180        6                    0.03333333           0.7444444
# 9  ENSP00000000412.3   human      119    277        6                    0.02166065           0.4296029
# 10 ENSP00000000412.3   human      142    277        6                    0.02166065           0.5126354
# 7  ENSP00000000412.3   human      173    277        6                    0.02166065           0.6245487
# 11 ENSP00000000412.3   human      220    277        6                    0.02166065           0.7942238
# 12 ENSP00000000412.3   human      277    277        6                    0.02166065           1.0000000
min.location <- tmp.test[!duplicated(tmp[,c(1:2,4:6)]),]
head(min.location)
#                 name species location length Ms.count Ms.count.normalized.by.length normalized.location
# 3  ENSP00000000233.5   human       18    180        6                    0.03333333          0.10000000
# 9  ENSP00000000412.3   human      119    277        6                    0.02166065          0.42960289
# 18 ENSP00000000442.6   human      144    423        9                    0.02127660          0.34042553
# 23 ENSP00000001008.4   human        6    459       11                    0.02396514          0.01307190
# 33 ENSP00000001146.2   human       54    512       11                    0.02148438          0.10546875
# 52 ENSP00000002125.4   human       43    441       12                    0.02721088          0.09750567
dim(min.location) # [1] 426047      6
min.location$normalized.location <- min.location$location/min.location$length
dim(min.location) # [1] 426047      7
save(min.location, file="min_location_r426047c7.RData")

library(ggplot2)
ggplot(min.location) + geom_freqpoly(binwidth = 0.01, aes(x = normalized.location,
                                                                         y = ..density.., colour = species, linetype=species))  + 
  labs(x = "Normalized Location of the 2nd M\n", title="     \n                                               Location of the 2nd M after Normalized by Protein Length        ") ## + geom_vline(xintercept = 0.04,linetype="dotted")


