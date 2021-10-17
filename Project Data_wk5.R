Pdata1
class(Pdata1)

Plot(Pdata1)
Acf(Pdata1
# ERROR runing Acf had to run par("mar") 
#then  par(mar=c(1,1,1,1)) to set the margins

myTS=ts(Pdata1, start=c(2016,1),frequency = 12)

plot(myTS[,-1]) #-1 to remove the date numeric column

Acf(myTS[,-1])
mean_fcst=meanf(myTS,12)
naive_fcst=naive(myTS,12)

rwf_fcst=rwf(myTS,12)

plot(rwf_fcst)

MA6_fcst=ma(myTS,order=6)
MA12_fcst=ma(myTS, order=12)
MA24_fcst=ma(myTS,order=24)
plot(MA6_fcst)
plot(MA12_fcst)
plot(MA24_fcst)

plot(myTS)
lines(MA6_fcst, col="Red")
lines(MA12_fcst, col="Green")
lines(MA24_fcst, col="Blue")
snaive_fcst$level #confidence level
snaive_fcst$fitted

ets_fcst=ets(myTS)
plot(ets_fcst)
?ets

hw_fcst_lvl=HoltWinters(myTS, beta=FALSE,gamma=FALSE)
hw_fcst_lvl

hw_fcst_trend=HoltWinters(myTS,gamma=FALSE)
hw_fcst_trend

hw_fcst_season=HoltWinters(myTS)
plot(hw_fcst_lvl)
plot(hw_fcst_trend)
plot(hw_fcst_season)

hw_fcst_all=forecast(hw_fcst_season, h=12)
plot(hw_fcst_all)
accuracy(hw_fcst_all)

