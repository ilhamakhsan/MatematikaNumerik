## CREATE DATA
akun_FB = data_latihan$'Jumlah Akun FB'
nilai_un = data_latihan$'Nilai UN SMA'
ipk = data_latihan$IPK

relasi = lm(akun_FB ~ nilai_un + ipk)

data_baru = data.frame(nilai_un=7.1,akun_FB=3)
prediksi_ipk = predict(relasi , data_baru)
prediksi_ipk