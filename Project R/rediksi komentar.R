#split data
y=data_jual_beli_tegal_2013$sum_comm
x=data_jual_beli_tegal_2013$sum_likes

#kuadratik
model_21=nls(y~a*x^2+b*x+c,start = list(a=1,b=1,c=1))
model_21

#kubik
model_22=nls(y~a*x^3+b*x+c,start = list(a=1,b=1,c=1))
model_22

#PREDIKSI NILAI, berapa nilai y(komentar) jika x(like)=15
# y=a*x^2+b*x+c
# y=(-0.0142)*x^2+3.7961*x+4.0304

prediksi = function(x){
  y=(-0.0142)*x^2+3.7961*x+4.0304
  return(y)
}
prediksi(15)
