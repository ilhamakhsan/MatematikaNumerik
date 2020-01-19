## CREATE DATA
penghasilan = data_latihan$`Penghasilan Orang Tua (Rp)`
jarak_rumah = data_latihan$`Jarak Rumah ke Kampus (KM)`
jumlah_akunFB = data_latihan$`Jumlah Akun FB`
nilai_un = data_latihan$`Nilai UN SMA`

relasi = lm (ipk ~ penghasilan + jarak_rumah + akun_FB + nilai_un)


data_baru= data.frame(penghasilan = 2700000 , jarak_rumah=4 , akun_FB = 1 , nilai_un =7.75)
prediksi_ipk = predict(relasi , data_baru)
prediksi_ipk