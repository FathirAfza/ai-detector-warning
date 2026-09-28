# Changelog

Format mengikuti [Keep a Changelog](https://keepachangelog.com/id-ID/1.1.0/). Versi mengikuti [Semantic Versioning](https://semver.org/).

## [Unreleased]

Rencana, belum dikerjakan:

- Modul opsional pengecekan typo.
- Modul opsional konsistensi istilah.
- Modul opsional tata bahasa sesuai EYD.

## [1.1.0] - 2026-09-28

### Ditambahkan

- Pola 12: slop, kalimat umum yang tidak membawa informasi ("di era modern ini", "menuju masa depan yang lebih baik").
- Pola 13: pengulangan kata dan frasa, dengan jumlah kemunculan. Istilah teknis, nama karya, dan kata kunci heading tidak dihitung.
- Pola 14: konteks antar-kalimat yang tidak nyambung (lompatan ide, klaim yang tidak dikaitkan ke subjek, rujukan "hal ini" yang tidak jelas, kesimpulan yang tidak didukung).
- Bagian output baru "Cek konteks dan heading": status tiap heading (Nyambung / Sebagian / Tidak nyambung), celah konteks, tabel pengulangan kata, dan daftar slop.
- Contoh 3: teks berbagian dengan isi Metode yang tidak sesuai heading.

### Diubah

- Cek kesesuaian heading (sebelumnya langkah 3b) sekarang langkah 4 yang wajib dijalankan, digabung dengan cek konteks antar-kalimat. Teks tanpa heading dicek terhadap judul atau topiknya.
- Langkah proses dinomori ulang 1–9.
- Saran revisi memakai tempat kosong seperti `[sebutkan bagian desainnya]` untuk informasi yang hanya diketahui penulis.
- Contoh 1 dan 2 diperbarui dengan bagian output baru.

## [1.0.0] - 2026-09-28

Rilis pertama.

### Fitur

- Analisis draf tulisan sendiri (bahasa Indonesia dan Inggris) untuk pola gaya yang sering memicu false positive AI detector.
- Skor risiko dalam tiga kategori: Rendah, Sedang, Tinggi, dengan kisaran persentase kasar sebagai ilustrasi. Skor selalu disebut sebagai heuristik, bukan hasil detector sungguhan.
- Kutipan langsung kalimat atau bagian paling berisiko, lengkap dengan nama polanya.
- Saran revisi per bagian yang mempertahankan makna dan gaya penulis.
- Checklist opsional untuk memeriksa draf berikutnya sendiri.
- Katalog 11 pola di `references/markers.md`:
  1. Kontras "bukan X, tapi Y"
  2. Tricolon berlebihan
  3. Kalimat penutup paragraf yang terlalu rapi
  4. Kata transisi formal di awal paragraf
  5. Frasa hedging
  6. Kosakata yang sering muncul di output AI
  7. Panjang dan ritme kalimat yang seragam (burstiness)
  8. Struktur paragraf/bagian yang terlalu teratur
  9. Simetri berlebihan ("di satu sisi... di sisi lain")
  10. Penjelasan konteks yang sudah jelas
  11. Isi tidak nyambung dengan heading (baru dibanding draf awal, diperiksa lewat langkah 3b)
- Batasan etis: hanya untuk tulisan milik pengguna, menolak permintaan memoles teks buatan AI agar lolos detector.
- `scripts/package.sh` untuk membuat file `ai-detector-risk-check.skill`.
- Workflow GitHub Actions yang melampirkan file `.skill` ke setiap GitHub Release.
- Dua contoh uji di `examples/`.

### Diubah dari draf awal

- Kisaran kategori Rendah di `SKILL.md` diubah dari ~10–25% menjadi ~0–25%, supaya sesuai dengan hasil pengujian teks spesifikasi (~5–15%).

[Unreleased]: https://github.com/FathirAfza/ai-detector-warning/compare/v1.1.0...HEAD
[1.1.0]: https://github.com/FathirAfza/ai-detector-warning/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/FathirAfza/ai-detector-warning/releases/tag/v1.0.0
