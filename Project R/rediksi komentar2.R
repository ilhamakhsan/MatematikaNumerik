#split data
y=data_jual_beli_tegal_2013$sum_comm
x=data_jual_beli_tegal_2013$add
x=as.numeric(x)

#kuadratik
model_21=nls(y~a*x^2+b*x+c,start = list(a=1,b=1,c=1))
model_21

#kubik
model_22=nls(y~a*x^3+b*x+c,start = list(a=1,b=1,c=1))
model_22

#PREDIKSI NILAI, berapa nilai y(komentar) jika x(add)=22
# y=a*x^2+b*x+c
# y=(0.0008164)*x^2+-0.0332041*x+9.0020736 

prediksi = function(x){
  y=(0.0008164)*x^2+-0.0332041*x+9.0020736 
  return(y)
}
prediksi(22)

