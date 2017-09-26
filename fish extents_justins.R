require(devtools)
install_github("dyerlab/gstudio")

install.packages(c("raster", "sp", "gdistance"), dependencies = TRUE)
install.packages("rgdal")
require(gstudio)
require(raster)
require(rgdal)
require(dismo)

packages <- c('sp', 'grid', 'lattice', 'ape', 'raster', 'maptools', 'phyloclim', 'dismo', 'rJava', 'rgdal', 'spocc', 'ENMeval')
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())))
}

ex <- extent(-97,-77,6,25)
ext2 <- extent(-1500000,300000,500000,25000000)

bioclim.vars <- list.files(path = paste(system.file(package = "dismo"),'/ex/wc0.5', sep = ''), pattern = 'bil', full.names = TRUE)  
bioclim.vars <- stack(bioclim.vars)
bioclim.vars
bioclim.vars.crop <- crop(bioclim.vars, ext)
bioclim.vars.crop

setwd("~/Desktop/bio1-19_30s_bil")

bio1 <- raster("bio1.bil")
ex <- extent(-97,-77,6,25)
bio1c <- crop(x=bio1, y=ex)
plot(bio1c)
writeRaster(x=bio1c, file="bio1c.grd", overwrite=TRUE)

bio2 <- raster("bio2.bil")
ex <- extent(-97,-77,6,25)
bio2c <- crop(x=bio2, y=ex)
plot(bio2c)
writeRaster(x=bio2c, file="bio2c.grd", overwrite=TRUE)

bio3 <- raster("bio3.bil")
ex <- extent(-97,-77,6,25)
bio3c <- crop(x=bio3, y=ex)
plot(bio3c)
writeRaster(x=bio3c, file="bio3c.grd", overwrite=TRUE)

bio4 <- raster("bio4.bil")
bio4c <- crop(x=bio4, y=ex)
writeRaster(x=bio4c, file="bio4c.grd", overwrite=TRUE)

bio5 <- raster("bio5.bil")
ex <- extent(-97,-77,6,25)
bio5c <- crop(x=bio5, y=ex)
plot(bio5c)
writeRaster(x=bio5c, file="bio5c.grd", overwrite=TRUE)

bio15 <- raster("bio15.bil")
ex <- extent(-97,-77,6,25)
bio15c <- crop(x=bio15, y=ex)
writeRaster(x=bio15c, file="bio15c_2m.grd", overwrite=TRUE)

bio8 <-raster("bio8.bil")
ex <- extent(-97,-77,6,25)
bio8c <- crop(x=bio8, y=ex)
writeRaster(x=bio8c, file="bio8c_2m.grd", overwrite=TRUE)

bio9 <- raster("bio9.bil")
ex <- extent(-97,-77,6,25)
bio9c <- crop(x=bio9, y=ex)
writeRaster(x=bio9c, file="bio9c_2m.grd", overwrite=TRUE)

bio10 <-raster("bio10.bil")
ex <- extent(c(-101, -65, 28, 46 ))
bio10c <- crop(x=bio10, y=ex)
writeRaster(x=bio10c, file="bio10c_2m.grd", overwrite=TRUE)

bio12 <-raster("bio12_2m.bil")
ex <- extent(c(-101, -65, 28, 46 ))
bio12c <- crop(x=bio12, y=ex)
writeRaster(x=bio12c, file="bio12c_all.grd", overwrite=TRUE)

bio17 <-raster("bio17.bil")
ex <- extent(c(-101, -65, 28, 46 ))
bio17c <- crop(x=bio17, y=ex)
writeRaster(x=bio17c, file="bio17c_2m.grd", overwrite=TRUE)

bio18 <-raster("bio_18.bil")
ex <- extent(c(-101, -65, 28, 46 ))
bio18c <- crop(x=bio18, y=ex)
writeRaster(x=bio18c, file="bio18c_all.grd", overwrite=TRUE)


climate1 <- raster("bio1-19_30s_bil/bio_1.bil")
climate1
e <-extent(-9900000,-8600000,1500000 ,3000000)
bc1 <- crop( climate1, e)
plot(bc1)
writeRaster(bc1, "BioClim_1.bil")

#BioClim2
climate2 <- raster("bio1-19_30s_bil/bio_2.bil")
climate2
bc2 <- crop( climate2, e)
plot(bc2)
writeRaster(bc2, "BioClim2.bil")

#BioClim3
climate3 <- raster("bio1-19_30s_bil/bio_3.bil")
climate3
bc3 <- crop( climate3, e)
plot(bc3)
writeRaster(bc3, "BioClim3.bil")

#BioClim4
climate4 <- raster("bio1-19_30s_bil/bio_4.bil")
climate4
bc4 <- crop( climate4, e)
plot(bc4)
writeRaster(bc4, "VariableBioClim4.bil")

#BioClim5
climate5 <- raster("bio1-19_30s_bil/bio_5.bil")
climate5
bc5 <- crop( climate5, e)
plot(bc5)
writeRaster(bc5, "BioClim5.bil")

#BioClim6
climate6 <- raster("bio1-19_30s_bil/bio_6.bil")
climate6
bc6 <- crop( climate6, e)
plot(bc6)
writeRaster(bc6, "BioClim6.bil")

#BioClim7
climate7 <- raster("bio1-19_30s_bil/bio_7.bil")
climate7
bc7 <- crop( climate7, e)
plot(bc7)
writeRaster(bc7, "BioClim7.bil")

#BioClim8
climate8 <- raster("bio1-19_30s_bil/bio_8.bil")
climate8
bc8 <- crop( climate8, e)
plot(bc8)
writeRaster(bc8, "BioClim8.bil")

#BioClim9
climate9 <- raster("bio1-19_30s_bil/bio_9.bil")
climate9
bc9 <- crop( climate9, e)
plot(bc9)
writeRaster(bc9, "BioClim9.bil")

#BioClim10
climate10 <- raster("bio1-19_30s_bil/bio_10.bil")
climate10
bc10 <- crop( climate10, e)
plot(bc10)
writeRaster(bc10, "BioClim10.bil")

#BioClim11
climate11 <- raster("bio1-19_30s_bil/bio_11.bil")
climate11
bc11 <- crop( climate11, e)
plot(bc11)
writeRaster(bc11, "BioClim11.bil")

#BioClim12
climate12 <- raster("bio1-19_30s_bil/bio_12.bil")
climate12
bc12 <- crop( climate12, e)
plot(bc12)
writeRaster(bc12, "BioClim12.bil")

#BioClim13
climate13 <- raster("bio1-19_30s_bil/bio_13.bil")
climate13
bc13 <- crop( climate13, e)
plot(bc13)
writeRaster(bc13, "BioClim13.bil")

#BioClim14
climate14 <- raster("bio1-19_30s_bil/bio_14.bil")
climate14
bc14 <- crop( climate14, e)
plot(bc14)
writeRaster(bc14, "BioClim14.bil")

#BioClim15
climate15 <- raster("bio1-19_30s_bil/bio_15.bil")
climate15
bc15 <- crop( climate15, e)
plot(bc15)
writeRaster(bc15, "BioClim15.bil")

#BioClim16
climate16 <- raster("bio1-19_30s_bil/bio_16.bil")
climate16
bc16 <- crop( climate16, e)
plot(bc16)
writeRaster(bc16, "BioClim16.bil")

#BioClim17
climate17 <- raster("bio1-19_30s_bil/bio_17.bil")
climate17
bc17 <- crop( climate17, e)
plot(bc17)
writeRaster(bc17, "BioClim17.bil")

#BioClim18
climate18 <- raster("bio1-19_30s_bil/bio_18.bil")
climate18
bc18 <- crop( climate18, e)
plot(bc18)
writeRaster(bc18, "BioClim18.bil")

#BioClim19
climate19 <- raster("bio1-19_30s_bil/bio_19.bil")
climate19
bc19 <- crop( climate19, e)
plot(bc19)
writeRaster(bc19, "BioClim19.bil")

#Alt
alt <- raster ("alt.bil")
alt
alt1 <- crop (alt, e)
plot (alt1)
writeRaster (alt1, "altitude.bil")
