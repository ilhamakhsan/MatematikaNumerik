#import data (temperature)
#rubah dalam bentuk time series
data_temperature=as.ts(temperature)

#gunakan pakage zooo
library(zoo)
data_temperature_ok=na.approx(data_temperature)