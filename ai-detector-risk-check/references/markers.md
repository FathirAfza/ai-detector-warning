# Marker Patterns Reference

Detailed catalogue of stylistic patterns that commonly trigger AI-detection false positives. Use this as a checklist when scanning a draft — not every pattern will apply to every text, and a single occurrence of any one of these is not itself a problem; it's density and repetition across a draft that raises risk.

## 1. Contrastive framing ("bukan X, tapi Y")
- ID: "bukan sekadar alat, tapi sebuah revolusi"; "bukan hanya tentang X, melainkan juga Y"
- EN: "not just X, but Y"; "isn't merely A — it's B"
- Why it flags: this exact syntactic template is heavily overrepresented in LLM output relative to natural corpora.

## 2. Tricolon / rule-of-three overuse
- ID: "cepat, efisien, dan andal"; listing exactly three adjectives/nouns in parallel structure repeatedly through a piece.
- EN: same pattern in English lists.
- Why it flags: natural writers vary list length (two, four, five items) far more than LLMs do.

## 3. Overly tidy paragraph closers
- Every paragraph ends with a neat summary/restatement sentence, even in informal or narrative contexts where a human would just stop.
- ID example: "Dengan demikian, dapat disimpulkan bahwa..." appearing after nearly every section, including short ones.
- Why it flags: humans rarely restate a point they just made unless writing a formal conclusion.

## 4. Formulaic transition words opening paragraphs
- ID: "Selain itu,", "Di sisi lain,", "Pada akhirnya,", "Tidak hanya itu,"
- EN: "Moreover,", "Furthermore,", "In addition,", "Ultimately,"
- Why it flags: real writers often jump between ideas without an explicit bridge word; LLMs default to one almost every paragraph.

## 5. Hedging reflexes
- ID: "penting untuk dicatat bahwa", "perlu diingat bahwa", "perlu ditekankan bahwa"
- EN: "it's important to note that", "it's worth mentioning that", "one might argue that"
- Why it flags: these are trained-in instructional reflexes, rare in spontaneous human writing outside very formal registers.

## 6. AI-associated vocabulary
- EN words heavily overrepresented in LLM output: delve, boundaries, tapestry, leverage (as a verb), landscape (metaphorical), realm, underscore, multifaceted, intricate, robust, seamless, holistic, paramount, myriad, testament to, navigate (metaphorical), foster, unlock, elevate, comprehensive.
- ID equivalents/parallels worth watching for overuse: "lanskap" (metaforis), "memanfaatkan" dipakai berulang sebagai reflex, "holistik", "komprehensif", "krusial", "menggali" (metaforis untuk "delve"), "beragam" dipakai berulang untuk "myriad", "menavigasi" (metaforis).
- A word appearing once is nothing; a cluster of these across a short piece is a real signal.

## 7. Sentence-length and rhythm uniformity ("burstiness")
- Check: do most sentences fall in a narrow word-count band (e.g. all 15–22 words)? Are there almost no short/blunt sentences or long/rambling ones?
- Human writing has noticeable variance — quick fragments, occasional run-ons, asides in parentheses or dashes used inconsistently.
- This is best assessed by eyeballing sentence lengths across a paragraph rather than exact counting, unless the user wants precise numbers.

## 8. Structural over-regularity at the paragraph/section level
- Every section following an identical template (context → analysis → mini-conclusion) with near-identical length.
- Every list rendered the same way (always exactly 3 bullets, always parallel grammatical structure).
- Introduction and conclusion mirroring each other almost sentence-for-sentence.

## 9. Excessive symmetry / "on one hand... on the other hand" balancing
- Constantly presenting two neatly balanced sides even when the writer's own actual opinion is lopsided — natural argumentative writing is usually more one-sided or messier than that.

## 10. Over-explaining obvious context
- Restating what a term means right after using it, or explaining the structure of the piece ("In this essay, I will first discuss X, then Y, then Z") in contexts where a human writer at the same level would just get into it.

## 11. Heading–content mismatch (isi tidak nyambung dengan heading)
- The text under a heading doesn't actually answer or develop what the heading promises. Common forms:
  - Generic filler that could sit under almost any heading (e.g. under "Metode Penelitian", a paragraph about why the topic is important instead of the actual method).
  - Content drifting into the next section's topic (e.g. "Tema" section that is really about "Filosofi" or "Realisasi").
  - The heading's key term never appears or is never explained in its own section.
  - Several sections that say roughly the same thing in different words.
- Why it flags: LLMs often generate plausible-sounding paragraphs per heading without tracking what each section is specifically supposed to contribute, producing smooth but off-target or repetitive sections. Human drafts can have this too (especially when sections are split between team members), so treat it as a moderate signal, and flag it mainly because it also weakens the document regardless of detection.
- How to check: for each heading, ask "if I hid the heading, could a reader guess it from the paragraph alone?" If not, flag it.
- Revision: rewrite the section's first sentence so it directly answers the heading, move off-topic sentences to the section they belong in, and cut generic sentences that repeat other sections.
- If the draft has no headings, apply the same check against the draft's title or the topic the user named (e.g. "deskripsi tema jembatan"). See also pattern 14 for coherence between sentences inside one section.

## 12. Slop: generic filler and empty statements (kalimat kosong)
- Sentences that sound meaningful but carry no checkable information, and could be pasted into a text on almost any topic.
- ID: "di era modern ini", "seiring perkembangan zaman", "memiliki peran yang sangat penting", "menghadapi berbagai tantangan", "menuju masa depan yang lebih baik", "memberikan dampak positif bagi masyarakat", "hal ini menjadi sangat relevan".
- EN: "in today's fast-paced world", "plays a crucial role", "has a significant impact", "paving the way for a brighter future", "in an ever-evolving landscape".
- Also counts: inflated claims with no support ("sangat inovatif", "solusi terbaik", "revolusioner"), and abstract nouns stacked without any concrete detail from the writer's own work (no numbers, names, materials, steps, results).
- How to check: for each sentence, ask "what would a reader lose if this sentence were deleted?" If the answer is nothing, or if the sentence would still be true after swapping the subject for a different project, flag it.
- Why it flags: LLMs fill space with high-probability generic phrasing. Detectors score these phrases as highly predictable, so a paragraph built mostly from them reads as low-perplexity text.
- Revision: cut the sentence, or replace it with one concrete detail only the writer knows (a measurement, a design decision and its reason, a result, an observation).

## 13. Word and phrase repetition (pengulangan kata)
- The same content word or phrase recurring within a short span, especially abstract or evaluative ones.
- ID example: "masa depan" three times in one paragraph; "simbol perjalanan" twice; "lebih ..." five times in five sentences.
- Also watch for the same sentence opener repeated ("Hal ini...", "Selain itu...", "Dengan adanya..."), and the same idea restated in consecutive sentences with small wording changes.
- How to check: list content words (not "dan", "yang", "untuk", "ini") that appear 3+ times in one paragraph, or phrases of 2+ words that appear 2+ times. Report the word, the count, and where it appears.
- Do not flag: consistent use of a technical term, a proper name (project, product, place), or a keyword the heading requires. Using one term consistently is correct academic practice; swapping it for synonyms would make the text worse.
- Why it flags: repeated abstract phrases lower the text's variety and make it more predictable, and they often mean the paragraph is circling one vague idea instead of adding new information (see pattern 12).
- Revision: keep the first occurrence, cut or replace the later ones with a concrete detail. If a phrase repeats because two sentences say the same thing, merge them.

## 14. Context not connected between sentences (konteks tidak nyambung)
- Each sentence reads fine on its own, but the sentences don't build on each other. Common forms:
  - A sentence jumps to a new idea without any link to the one before (e.g. from the project's name straight to a life lesson, with no step connecting them).
  - A claim is stated but never tied to the actual subject. A bridge is called "simbol perjalanan", but no part of the bridge is named that shows it.
  - Pronouns or references ("hal ini", "perjalanan tersebut", "this approach") point to something that was never clearly introduced.
  - The paragraph's opening promises one topic and its closing sentence talks about another (e.g. opens with "tema", closes with "filosofi").
  - A conclusion that doesn't follow from what was said ("Dengan demikian, jembatan ini efisien" when no efficiency data was given).
- How to check: read each pair of consecutive sentences and ask "why does this sentence come after that one?" If there is no answer (no cause, example, contrast, detail, or next step), flag the gap. Then check that the paragraph as a whole stays on its heading or stated topic (pattern 11).
- Why it flags: LLMs produce locally fluent sentences but often lose the thread across a paragraph, especially in abstract or motivational text. Human drafts can have gaps too, usually because the writer knows the missing step and forgot to write it down, so treat this as a moderate detection signal and a strong quality signal.
- Revision: add the missing link sentence (usually a concrete detail from the writer's own work), reorder sentences so each one follows from the last, replace vague references with the actual noun, and cut claims that the paragraph doesn't support.

---

When flagging a passage, name which of the above categories it falls into (can be more than one) — this makes the revision guidance concrete rather than a vague "sounds robotic."
