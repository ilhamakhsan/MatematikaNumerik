## CREATE DATA
penghasilan = data_latihan$`Penghasilan Orang Tua (Rp)`
ipk = data_latihan $ IPK

relasi = lm(penghasilan ~ ipk)

data_baru = data.frame(ipk = 3.79)
penghasilan= predict(relasi,data_baru)
penghasilan