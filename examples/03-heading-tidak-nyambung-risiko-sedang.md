# Contoh 3: isi tidak nyambung dengan heading, risiko sedang

Ringkasan poster KTI dengan empat bagian. Teks ini contoh buatan untuk menunjukkan cek konteks dan heading (langkah 4). Output di bawah adalah hasil yang diharapkan, belum hasil uji dari penggunaan nyata.

## Input

> **Filter Air Sederhana dari Arang Tempurung Kelapa**
>
> **Latar Belakang**
> Air bersih adalah kebutuhan pokok manusia. Di desa kami, sumur warga keruh setiap musim hujan. Kami ingin membuat filter yang bisa dirakit sendiri dengan bahan yang ada di sekitar rumah.
>
> **Metode**
> Di era modern ini, ketersediaan air bersih menjadi isu yang sangat penting. Banyak masyarakat yang masih kesulitan mendapatkan air bersih, sehingga diperlukan solusi yang inovatif, efektif, dan terjangkau. Oleh karena itu, penelitian ini memiliki peran yang sangat penting bagi masyarakat.
>
> **Hasil**
> Setelah disaring tiga kali, air terlihat lebih jernih. Kekeruhan turun dari 48 NTU menjadi 9 NTU. Filter mulai tersumbat setelah kira-kira 20 liter.
>
> **Kesimpulan**
> Air bersih merupakan kebutuhan penting bagi masyarakat. Dengan demikian, filter ini tidak hanya menjadi solusi bagi masalah air keruh, tetapi juga menjadi langkah menuju masa depan yang lebih baik.

## Output yang diharapkan

### 1. Skor risiko

**Sedang (~30–45%)**

"Latar Belakang" dan "Hasil" konkret dan ritmenya bervariasi. Risiko datang dari "Metode" dan "Kesimpulan": keduanya berisi kalimat umum yang tidak menjawab heading-nya, dengan beberapa pola AI yang menumpuk.

> Angka ini perkiraan heuristik dari pola gaya tulisan, bukan skor dari Turnitin, GPTZero, atau detector lain. Skill ini tidak punya akses ke model mereka. Detector sungguhan bisa memberi angka berbeda, dan detector itu sendiri juga bisa salah.

### 2. Cek konteks dan heading

| Bagian | Hasil | Alasan |
|---|---|---|
| Latar Belakang | **Nyambung** | Menyebut masalah nyata (sumur keruh saat hujan) dan tujuan. |
| Metode | **Tidak nyambung** | Tidak ada bahan, susunan filter, atau langkah kerja. Isinya alasan pentingnya air bersih, yang sudah dibahas di Latar Belakang. |
| Hasil | **Nyambung** | Ada angka kekeruhan dan batas pemakaian. |
| Kesimpulan | **Sebagian** | Kalimat pertama mengulang Latar Belakang. Angka dari Hasil (48 → 9 NTU, tersumbat di ~20 liter) tidak disebut. |

**Konteks antar-kalimat dan antar-bagian (pola 14):**

- "Hasil" menyebut "disaring tiga kali", tapi proses penyaringan tidak pernah dijelaskan karena "Metode" tidak berisi metode. Pembaca tidak tahu apa yang diuji.
- Di "Metode", kalimat 3 dibuka dengan "Oleh karena itu", tapi kesimpulan "penelitian ini memiliki peran yang sangat penting" tidak mengikuti dari dua kalimat sebelumnya.
- "Kesimpulan" menyebut filter sebagai "solusi", padahal "Hasil" mencatat filter tersumbat setelah ~20 liter. Keterbatasan ini tidak dibahas.

**Pengulangan kata (pola 13):**

| Kata/frasa | Jumlah | Catatan |
|---|---|---|
| "air bersih" | 4 | Latar Belakang 1, Metode 2, Kesimpulan 1 |
| "masyarakat" | 3 | Metode 2, Kesimpulan 1 |
| "sangat penting" | 2 | dua-duanya di Metode |
| "kebutuhan ... manusia/masyarakat" | 2 | kalimat pertama Latar Belakang dan Kesimpulan, isinya sama |

"air bersih" adalah topik utama, jadi wajar muncul. Yang jadi masalah adalah dua kalimat yang menyatakan hal yang sama di awal dan di akhir.

**Slop (pola 12):** "Di era modern ini", "isu yang sangat penting", "solusi yang inovatif, efektif, dan terjangkau", "memiliki peran yang sangat penting bagi masyarakat", "menuju masa depan yang lebih baik".

### 3. Titik paling berisiko

**a. Seluruh bagian Metode**

> "Di era modern ini, ketersediaan air bersih menjadi isu yang sangat penting. [...] Oleh karena itu, penelitian ini memiliki peran yang sangat penting bagi masyarakat."

- Pola 11 (isi tidak sesuai heading), pola 12 (slop), pola 2 (tricolon "inovatif, efektif, dan terjangkau"), pola 13 ("sangat penting" 2×).
- Tiga kalimat yang bisa ditempel di KTI mana pun tentang air bersih. Tidak ada informasi yang hanya dimiliki penulis.

**b. Kalimat terakhir Kesimpulan**

> "Dengan demikian, filter ini tidak hanya menjadi solusi bagi masalah air keruh, tetapi juga menjadi langkah menuju masa depan yang lebih baik."

- Pola 1 (kontras "tidak hanya... tetapi juga"), pola 3 (penutup rapi), pola 4 ("Dengan demikian,"), pola 12 ("masa depan yang lebih baik").

**c. Kalimat pertama Kesimpulan**

> "Air bersih merupakan kebutuhan penting bagi masyarakat."

- Pola 8 dan 13: menggemakan kalimat pertama Latar Belakang ("Air bersih adalah kebutuhan pokok manusia.").

### 4. Saran revisi

**Untuk (a):** Tulis ulang Metode dari nol, dimulai dengan kalimat yang langsung menjawab "bagaimana":

> "Filter dibuat dari [wadah] berisi lapisan [urutan bahan, misalnya kerikil, pasir, arang tempurung kelapa]. Air sumur dituang dari atas dan disaring tiga kali. Kekeruhan diukur dengan [alat] sebelum dan sesudah penyaringan."

Isi bagian dalam kurung dengan yang benar-benar kalian lakukan. Kalimat soal pentingnya air bersih dihapus saja, karena Latar Belakang sudah membahasnya.

**Untuk (b) dan (c):** Mulai Kesimpulan dari hasil, sebut keterbatasannya, dan berhenti di situ:

> "Filter arang tempurung kelapa menurunkan kekeruhan air sumur dari 48 NTU menjadi 9 NTU setelah tiga kali penyaringan. Filter perlu diganti atau dibersihkan setelah sekitar 20 liter."

**Checklist cepat untuk draf berikutnya:**

- Tutup heading-nya, lalu baca isinya. Bisa ditebak ini bagian apa?
- Apakah ada kalimat yang tetap benar kalau judul penelitiannya diganti? Hapus atau ganti dengan detail.
- Apakah Kesimpulan menyebut angka dari Hasil?
