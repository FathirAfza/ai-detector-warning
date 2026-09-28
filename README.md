# ai-detector-risk-check

Claude Agent Skill untuk memeriksa draf tulisan sendiri dan menunjukkan bagian mana yang berpola "mirip AI", sebelum draf itu masuk ke Turnitin, GPTZero, atau Originality.ai.

[Bahasa Indonesia](#bahasa-indonesia) · [English](#english)

---

## Bahasa Indonesia

### Masalahnya

AI detector sering menandai tulisan manusia sebagai buatan AI. Yang paling sering kena: tulisan formal dan terstruktur, dan tulisan penutur non-native English. KTI, LKTI, laporan, dan esai lomba masuk semua kategori itu.

Skill ini membaca draf kamu, mengutip kalimat yang paling berisiko, menyebut polanya, lalu memberi saran revisi yang tetap mempertahankan makna dan gaya kamu.

Skill ini juga mengecek apakah konteksnya nyambung. Teks buatan AI sering lancar per kalimat tapi tidak saling menyambung, atau isinya tidak menjawab heading-nya. Setiap heading dinilai Nyambung, Sebagian, atau Tidak nyambung. Kalimat umum yang kosong (slop) dan kata yang diulang-ulang juga ditandai.

### Instalasi

**Aplikasi Claude (claude.ai, desktop):**

1. Unduh `ai-detector-risk-check.skill` dari halaman [Releases](../../releases), atau buat sendiri dengan `./scripts/package.sh`.
2. Buka pengaturan Skills di Claude (saat ini di Settings → Capabilities). Pastikan code execution aktif.
3. Upload file `.skill` tadi.

**Claude Code:** salin folder `ai-detector-risk-check/` ke `~/.claude/skills/` (untuk semua proyek) atau `.claude/skills/` (untuk satu proyek).

```bash
cp -r ai-detector-risk-check ~/.claude/skills/
```

### Cara pakai

Panggil skill-nya, lalu tempel teks atau unggah PDF/DOCX:

```
/ai-detector-risk-check

[tempel draf di sini]
```

Skill juga bisa terpanggil otomatis kalau kamu bertanya seperti "esai aku kedengeran kayak AI nggak?" atau "bakal kena flag Turnitin nggak?".

Draf panjang diperiksa per bagian. Kalau teksnya hasil copy dari PDF, cek dulu apakah ada blok yang terduplikasi. Pengulangan persis bisa terbaca sebagai pola seragam padahal itu bukan gaya menulis kamu.

### Output

Empat bagian:

1. **Skor risiko**: Rendah / Sedang / Tinggi, dengan kisaran persentase kasar.
2. **Cek konteks dan heading**: status tiap heading (Nyambung / Sebagian / Tidak nyambung), celah konteks antar-kalimat, daftar kata yang diulang beserta jumlahnya, dan kalimat slop.
3. **Titik paling berisiko**: kutipan kalimat, nama pola, dan alasannya.
4. **Saran revisi**: per kalimat atau per kelompok kalimat yang mirip. Kalau perbaikannya butuh informasi yang hanya kamu tahu (detail desain, angka), skill memberi tempat kosong seperti `[sebutkan bagian desainnya]`, bukan mengarang.

Potongan contoh (lengkapnya di [`examples/01-paragraf-filosofi-risiko-tinggi.md`](examples/01-paragraf-filosofi-risiko-tinggi.md)):

```
Skor risiko: Tinggi (~55–70%)

Titik paling berisiko
a. "Melalui filosofi ini, The Valiant Crest tidak hanya dimaknai sebagai
   sebuah jembatan secara fisik, tetapi juga sebagai simbol perjalanan..."
   - Pola 1: kontras "tidak hanya X, tetapi juga Y"
   - Pola 3: penutup yang merangkum kalimat 1–4 tanpa info baru

Saran revisi
a. Hapus kalimat penutup, atau ganti dengan hubungan konkret antara
   desain dan makna.
```

Contoh risiko rendah ada di [`examples/02-poster-spesifikasi-risiko-rendah.md`](examples/02-poster-spesifikasi-risiko-rendah.md). Contoh cek heading pada teks berbagian ada di [`examples/03-heading-tidak-nyambung-risiko-sedang.md`](examples/03-heading-tidak-nyambung-risiko-sedang.md).

### Pola yang diperiksa

Daftar lengkap di [`references/markers.md`](ai-detector-risk-check/references/markers.md). Ringkasnya: kontras "bukan X, tapi Y", tricolon, kalimat penutup paragraf yang terlalu rapi, kata transisi di awal paragraf, frasa hedging, kosakata khas AI, panjang kalimat seragam, struktur bagian yang terlalu teratur, simetri berlebihan, penjelasan yang tidak perlu, isi yang tidak nyambung dengan heading, slop (kalimat umum tanpa informasi), pengulangan kata, dan konteks antar-kalimat yang tidak nyambung.

Satu kemunculan pola tidak berarti apa-apa. Yang dihitung adalah kepadatannya.

### Batasan

- **Skor ini heuristik.** Skill tidak punya akses ke model Turnitin, GPTZero, atau detector lain. Persentasenya hanya ilustrasi dari kategori Rendah/Sedang/Tinggi, dan detector sungguhan bisa memberi angka lain. Detector itu sendiri juga bisa salah.
- Teks yang sangat pendek atau murni data teknis (spesifikasi, dimensi) hampir selalu keluar Rendah. Pola AI butuh kalimat naratif untuk muncul.
- Belum ada pengecekan typo, konsistensi istilah, atau EYD. Rencananya masuk sebagai modul opsional di versi berikutnya.

### Batasan etis

Skill ini **hanya** untuk tulisan yang kamu tulis sendiri. Tujuannya mengurangi false positive pada karya asli.

Skill ini tidak dibuat untuk memoles teks hasil generate AI supaya lolos detector lalu diakui sebagai karya sendiri. Kalau kamu minta itu, Claude akan menolak bagian tersebut. Claude tetap bisa membantu kamu menulis draf sendiri dari awal.

### Struktur repo

```
├── ai-detector-risk-check/     folder skill
│   ├── SKILL.md
│   └── references/markers.md
├── examples/                   contoh input dan output
├── scripts/package.sh          membuat file .skill
└── .github/workflows/          melampirkan .skill ke setiap Release
```

Membuat file `.skill` secara lokal (butuh `zip`):

```bash
./scripts/package.sh          # hasil di dist/ai-detector-risk-check.skill
```

### Lisensi

[MIT](LICENSE)

---

## English

### The problem

AI detectors often flag human writing as AI-generated. Formal, structured writing and writing by non-native English speakers get hit the most. School research papers and competition essays usually fit both.

This skill reads your draft, quotes the sentences with the highest risk, names the pattern behind each, and suggests edits that keep your meaning and your voice.

It also checks whether the context connects. AI text often reads smoothly sentence by sentence while the sentences don't follow from each other, or a section doesn't answer its heading. Each heading gets rated Nyambung / Sebagian / Tidak nyambung (connected / partly / not connected). Generic filler (slop) and repeated words are flagged too.

### Installation

**Claude app (claude.ai, desktop):**

1. Download `ai-detector-risk-check.skill` from [Releases](../../releases), or build it with `./scripts/package.sh`.
2. Open the Skills settings in Claude (currently under Settings → Capabilities). Code execution needs to be on.
3. Upload the `.skill` file.

**Claude Code:** copy the `ai-detector-risk-check/` folder into `~/.claude/skills/` (all projects) or `.claude/skills/` (one project).

```bash
cp -r ai-detector-risk-check ~/.claude/skills/
```

### Usage

Call the skill, then paste your text or upload a PDF/DOCX:

```
/ai-detector-risk-check

[paste your draft here]
```

It can also trigger on its own when you ask things like "does my essay sound like AI?" or "will Turnitin flag this?".

Long drafts are checked section by section. If you copied text out of a PDF, look for duplicated blocks first. An exact repeat can read as a uniform pattern even though it isn't how you write.

### Output

Four parts:

1. **Skor risiko** (risk score): Rendah / Sedang / Tinggi (Low / Medium / High), with a rough percentage range.
2. **Cek konteks dan heading** (context and heading check): a status per heading, context gaps between sentences, repeated words with counts, and filler sentences.
3. **Titik paling berisiko** (highest-risk spots): the quoted sentence, the pattern name, and why it reads as AI.
4. **Saran revisi** (revision guidance): per sentence or per cluster of similar sentences. When a fix needs something only you know (a design detail, a number), the skill leaves a placeholder instead of making it up.

Section headings stay in Indonesian. The analysis follows the language of your draft and of the conversation.

See [`examples/`](examples/) for a high-risk case, a low-risk case, and a multi-section text with a heading mismatch.

### Patterns checked

Full list in [`references/markers.md`](ai-detector-risk-check/references/markers.md): "not X but Y" contrasts, rule-of-three lists, tidy paragraph closers, stock transition words, hedging phrases, AI-associated vocabulary, uniform sentence length, over-regular section structure, forced balance, over-explaining, content that doesn't match its heading, generic filler (slop), word repetition, and sentences that don't connect.

One occurrence means nothing. Density is what counts.

### Limitations

- **The score is a heuristic.** The skill has no access to Turnitin, GPTZero, or any other detector's model. The percentage only illustrates the Low/Medium/High band. A real detector may score the same text differently, and it can be wrong too.
- Very short text or pure technical data (specs, dimensions) almost always comes out Low. AI patterns need narrative sentences to show up.
- No typo, terminology consistency, or grammar checks yet. Those are planned as optional modules.

### Ethical limits

This skill is **only** for writing you wrote yourself. It exists to reduce false positives on original work.

It is not for polishing AI-generated text so it passes a detector and gets submitted as your own. Claude will decline that part of a request. It can still help you write your own draft from scratch.

### License

[MIT](LICENSE)
