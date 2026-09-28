# Contoh 1: paragraf filosofi, risiko tinggi

Bagian "Tema/Filosofi" dari deskripsi karya lomba jembatan. Paragraf naratif dan abstrak, jenis teks yang paling sering kena false positive.

## Input

> The Valiant Crest mengangkat tema tentang keberanian, ketangguhan, dan semangat untuk terus melangkah menuju masa depan yang lebih baik. Nama The Valiant Crest sendiri merepresentasikan sebuah lambang keberanian yang berdiri teguh dalam menghadapi berbagai tantangan. Jembatan ini menjadi simbol perjalanan seseorang untuk terus berkembang, melewati rintangan, dan tidak berhenti pada keadaan saat ini. Setiap bagian dari perjalanan tersebut menggambarkan proses untuk menjadi lebih kuat, lebih berani, dan lebih siap menghadapi masa depan. Melalui filosofi ini, The Valiant Crest tidak hanya dimaknai sebagai sebuah jembatan secara fisik, tetapi juga sebagai simbol perjalanan menuju masa depan yang lebih kuat dan penuh harapan.

## Output yang diharapkan

### 1. Skor risiko

**Tinggi (~55–70%)**

Satu paragraf pendek memuat hampir semua marker utama: kontras "tidak hanya... tetapi juga", dua tricolon, kalimat penutup yang merangkum, dan pembuka-penutup yang saling menggemakan. Empat kalimat pertama panjangnya hampir sama (16–19 kata). Kalimat-kalimatnya juga tidak saling menyambung, dan beberapa frasa diulang.

> Angka ini perkiraan heuristik dari pola gaya tulisan, bukan skor dari Turnitin, GPTZero, atau detector lain. Skill ini tidak punya akses ke model mereka. Detector sungguhan bisa memberi angka berbeda, dan detector itu sendiri juga bisa salah.

### 2. Cek konteks dan heading

Teks tidak punya heading di dalamnya, jadi dicek terhadap topik yang disebut pengguna: bagian "Tema" dari deskripsi karya.

| Bagian | Hasil | Alasan |
|---|---|---|
| Tema (seluruh paragraf) | **Sebagian** | Kalimat 1 menyebut tema, tapi kalimat penutup berbicara tentang "filosofi". Tema dan filosofi tercampur di satu bagian (pola 11). |

**Konteks antar-kalimat (pola 14):**

- Kalimat 2 → 3: dari arti nama ("lambang keberanian") langsung pindah ke "simbol perjalanan seseorang". Tidak ada kalimat yang menjelaskan kenapa sebuah jembatan dianggap perjalanan.
- Kalimat 3 → 4: "Setiap bagian dari perjalanan tersebut" merujuk ke perjalanan yang abstrak, bukan ke bagian jembatan. Pembaca tidak tahu bagian fisik mana yang dimaksud.
- Sepanjang paragraf: klaim makna ("berdiri teguh", "simbol perjalanan") tidak pernah dikaitkan ke satu pun detail desain (bentuk rangka, pilar, bagian puncak).

**Pengulangan kata (pola 13):**

| Kata/frasa | Jumlah | Catatan |
|---|---|---|
| "lebih" | 5 | lebih baik, lebih kuat (2×), lebih berani, lebih siap |
| "masa depan" | 3 | kalimat 1, 4, 5 |
| "perjalanan" | 3 | kalimat 3, 4, 5 |
| "menuju masa depan" | 2 | kalimat 1 dan 5 |
| "simbol perjalanan" | 2 | kalimat 3 dan 5 |
| "keberanian" | 2 | kalimat 1 dan 2 |
| "terus" | 2 | "terus melangkah", "terus berkembang" |
| "menghadapi" | 2 | "menghadapi berbagai tantangan", "menghadapi masa depan" |

"The Valiant Crest" (3×) dan "jembatan" (2×) tidak dihitung sebagai masalah karena itu nama karya dan objek utamanya.

**Slop (pola 12):** "menghadapi berbagai tantangan", "menuju masa depan yang lebih baik", "penuh harapan". Ketiganya tetap benar kalau subjeknya diganti proyek lain, jadi tidak menambah informasi tentang jembatan ini.

### 3. Titik paling berisiko

**a. Kalimat penutup**

> "Melalui filosofi ini, The Valiant Crest tidak hanya dimaknai sebagai sebuah jembatan secara fisik, tetapi juga sebagai simbol perjalanan menuju masa depan yang lebih kuat dan penuh harapan."

- Pola 1 (kontras "tidak hanya X, tetapi juga Y").
- Pola 3 (penutup rapi yang merangkum): kalimat ini mengulang isi kalimat 1–4 tanpa informasi baru.
- Pola 4: dibuka dengan frasa transisi "Melalui filosofi ini,".

Ini titik paling berat karena tiga pola menumpuk di satu kalimat.

**b. Dua tricolon**

> "keberanian, ketangguhan, dan semangat untuk terus melangkah"

> "lebih kuat, lebih berani, dan lebih siap menghadapi masa depan"

- Pola 2. Yang kedua paralel sempurna (lebih-lebih-lebih), jenis daftar yang jarang muncul di tulisan spontan.
- Kalimat 3 ("berkembang, melewati rintangan, dan tidak berhenti") juga berpola tiga, jadi ada tiga daftar tiga-unsur dalam lima kalimat.

**c. Pembuka dan penutup saling menggemakan**

> "menuju masa depan yang lebih baik" (kalimat 1)
> "menuju masa depan yang lebih kuat dan penuh harapan" (kalimat 5)

- Pola 8: frasa "masa depan" muncul tiga kali, dan kalimat pertama dan terakhir punya struktur yang sama.

**d. Ritme kalimat seragam**

- Pola 7: panjang kalimat 19, 16, 18, 19, 28 kata. Tidak ada kalimat pendek.

**e. Kosakata abstrak-inspirasional yang padat**

- "keberanian", "ketangguhan", "lambang", "berdiri teguh", "simbol perjalanan", "penuh harapan". Tidak ada satu pun detail fisik jembatan (bentuk, bagian, bahan) yang dikaitkan ke makna tersebut.

### 4. Saran revisi

**Untuk (a):** Hapus kalimat penutup, atau ganti dengan hubungan konkret antara desain dan makna. Contoh:

> "Karena itu bagian puncak jembatan kami buat [sebutkan bentuknya], seperti lambang pada perisai."

Isi bagian dalam kurung dengan detail desain yang sebenarnya. Satu detail fisik lebih meyakinkan daripada kalimat rangkuman.

**Untuk (b):** Pecah daftar yang rapi. Pilih satu atau dua sifat yang paling penting, atau ubah jumlahnya. Contoh:

- "keberanian, ketangguhan, dan semangat untuk terus melangkah" → "keberanian dan ketangguhan"
- "lebih kuat, lebih berani, dan lebih siap menghadapi masa depan" → "lebih kuat setelah melewati setiap rintangan"

**Untuk (c):** Sebut "masa depan" sekali saja. Kalimat pertama cukup menyebut tema tanpa frasa penutup.

**Untuk (d):** Tambahkan satu kalimat pendek. Contoh: "Namanya diambil dari kata *crest*, lambang pada perisai ksatria." (Sesuaikan dengan alasan asli pemilihan nama.)

**Untuk (e):** Ganti satu atau dua ungkapan abstrak dengan hal yang bisa dilihat di karya: jumlah pilar, bentuk rangka, warna, atau alasan pemilihan struktur.

**Untuk konteks yang tidak nyambung:** Pisahkan tema dan filosofi. Kalau bagian ini berjudul "Tema", akhiri di tema dan pindahkan penjelasan makna ke bagian "Filosofi". Lalu tambahkan satu kalimat penghubung antara nama dan desain, misalnya "Makna itu kami wujudkan di [bagian desain], yang [penjelasan singkat]."

**Untuk pengulangan:** Sebut "masa depan" dan "simbol perjalanan" sekali saja. Dari lima "lebih", sisakan satu.

**Contoh arah revisi (satu kemungkinan, sesuaikan dengan gaya sendiri):**

> The Valiant Crest mengangkat tema keberanian dan ketangguhan. Namanya diambil dari *crest*, lambang pada perisai ksatria. Kami membayangkan jembatan ini sebagai jalur seseorang yang terus berkembang dan tidak berhenti di keadaan sekarang. Makna itu kami wujudkan di [bagian desain], yang [penjelasan singkat].
