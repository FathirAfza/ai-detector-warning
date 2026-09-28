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

---

When flagging a passage, name which of the above categories it falls into (can be more than one) — this makes the revision guidance concrete rather than a vague "sounds robotic."
