# Plan: CLAUDE.md for Blog Writing

> Status: For review — nothing has been written to `CLAUDE.md` yet.
> This document records what I found analysing the existing posts in this repo, and gives
> the exact content I propose to add to `CLAUDE.md` once you approve it.

## What I looked at

`urbancamo.github.io` isn't a Jekyll `_posts` collection — posts are individual `.md` files
scattered through the repo, indexed by hand from `index.md` / `retrostuff.md` / `devblog.md`.
I read every post-like file to find patterns:

- `devblog.md` — running technical dev-log, dated entries, terse how-to style (1,529 words)
- `ea8_hla-004.md` — HEMA/POTA/WWFF radio activation report, narrative (1,285 words)
- `retrostuff/rc2025_10.md` — Retrochallenge entry, multi-update log with nav (2,088 words)
- `retrostuff/rc2021_10.md` — Retrochallenge entry, shorter multi-update log (429 words)
- `retrostuff/rc2024_10.md` / `rc2026_10.md` — Retrochallenge "goals" stub posts (21–56 words)
- `casio-basic/rc2022_10.md` — Retrochallenge entry, dated log with wrap-up (1,021 words)
- `casio-pocket-computers.md` — reference-style project round-up (951 words)
- `declegacy.md`, `javaapiforkml.md` — short placeholder/pointer pages (32–53 words)

Post length varies enormously (a stub can be 4 sentences; a full writeup can run 2,000+
words) — length is driven entirely by how much there is to say, not a target word count.
The one constant is voice and mechanics, which is what the heuristics below capture.

## Findings → heuristics

### 1. Voice and tone
- First person throughout ("I", "my"), conversational, not corporate. Reads like a personal
  logbook, not marketing copy.
- Dry, self-deprecating humour when things go sideways or don't get finished, e.g. *"Well,
  didn't get very far with my first goal"*, *"That's as far as I'm prepared to go, it's
  called finishing on a win!"*
- Doesn't oversell results — modest, factual claims ("great success", "quite incredible on
  5 watts") rather than hype.
- Technical asides and caveats go in parentheses mid-sentence rather than footnotes, e.g.
  *"(although I may switch to the laptop if I decide this is the way to go)"*.
- Assumes a technically literate reader; explains genuinely obscure things briefly, doesn't
  over-explain common concepts.

### 2. UK English — non-negotiable
Confirmed consistently across every post (`colour`, `favourite`, `organised`, `realise[d]`,
`analysed`, `behaviour`, `cancelled`, `modelling`, `programme`, `centre`, `travelling`,
`licence` (noun), `whilst`, `amongst`). Never American spellings. Key patterns to enforce:
- `-ise`/`-ised`/`-ising` not `-ize` (organise, realise, analyse)
- `-our` not `-or` (colour, favour, behaviour)
- `-re` not `-er` (centre)
- doubled consonant before suffix (cancelled, modelling, travelling)
- `programme` (not "program", except when referring to a computer program)
- `licence` (noun) vs `license` (verb) distinction preserved
- Dates as `DD-MON-YYYY` with the month as a 3-letter capitalised abbreviation (`04-OCT-2025`),
  never `MM/DD/YYYY`.
- Currency in `£`, distances/temperatures in metric (`0.5m`, `1km`).

### 3. Structure
- Title is always a single `#` H1 (occasionally `##` for pages folded into a parent index).
- No YAML front matter is used anywhere — plain Markdown files.
- Two recurring post shapes, pick whichever fits the content:
  - **Log-style post** (Retrochallenge entries, devblog): opens with 1–2 short scene-setting
    sections (e.g. `## Goals`, `## Introduction`), then an `## Updates` section containing
    dated subheadings `### DD-MON-YYYY[, optional title]`, oldest first. Each entry is a
    self-contained diary chunk — narrative prose interleaved with fenced code blocks for
    terminal transcripts, source code or config files.
    - For long-running/multi-session posts, add a "reverse chronological" jump list right
      under the H1, using 📍 for the newest entry and ‣ for older ones, linking to `#dd-mon-yyyy`
      anchors, then a `---` rule before the intro (see `retrostuff/rc2025_10.md`).
    - A short stub is fine as a starting point (just `# Title` + `## Goals` + one image) —
      it gets filled in over time as updates land.
  - **Report-style post** (radio activations, project write-ups): opens with a short scene-
    setting paragraph, then a bullet list of reference links/IDs if relevant (HEMA/POTA/WWFF
    style), then `###`-level sections for background/location/technical detail/equipment,
    photos with italic captions underneath (`_Car Parking_`), and — where relevant — closes
    with a data table (log book, comparison table, etc.) and a links/resources section.
- Section headings are short, Title Case, and describe content plainly (`## Goals`,
  `## Introduction`, `## Updates`, `### The Radio`, `### The Ascent`).
- Images: relative paths, one per line, often followed on the next line by an italicised
  one-line caption (`_Description of photo_`). No alt text conventions beyond that.
- Fenced code blocks always carry a language hint when the content isn't a plain terminal
  transcript (` ```basic `, ` ```bash `, ` ```xml `); plain shell/session transcripts use a
  bare ` ``` `.
- Inline code/backticks for filenames, commands, callsigns' technical values, and frequencies.
- External links are used liberally and inline — callsigns to qrz.com, competitions/programmes
  to their home pages, tools/repos to GitHub — using standard `[text](url)` Markdown, not
  reference-style links.
- Posts often end with a resources/links section (`## Casio Pocket Computer Links`) when
  there's a natural set of related material, but this isn't mandatory.

### 4. Mechanics / don'ts
- Don't add YAML front matter, Jekyll layout tags, or SEO boilerplate — none of the existing
  posts use them.
- Don't pad short updates to hit a length target — several genuine posts are a single
  paragraph plus an image.
- Don't over-polish into corporate/marketing voice — keep it personal and slightly informal.
- Don't invent structure that isn't present in the source (no "TL;DR" boxes, no tag lists,
  no author bios) — these posts don't use them anywhere in the repo.

## Proposed `CLAUDE.md` content

The file below is what I'd write into `/Users/msw/code/urbancamo.github.io/CLAUDE.md`
(currently empty) if you approve this plan. It's deliberately written as direct instructions
Claude can follow when asked to draft a new blog post from a spec/outline.

```markdown
# CLAUDE.md

## Purpose

This repository is Mark Wickens' personal site (urbancamo.github.io) — a mix of ham radio
activation reports, retrocomputing project logs (Retrochallenge entries), and technical
dev-log notes, plus a few reference/documentation pages. Posts are plain Markdown files
committed directly to the repo (no Jekyll `_posts` collection, no front matter).

When asked to write or draft a blog post, match the style of existing posts closely enough
that it's difficult to tell it apart from previous ones. Use the heuristics below.

## Language

- Write in **UK English**, always: `-ise`/`-ised` not `-ize` (organise, realise, analyse),
  `-our` not `-or` (colour, favourite, behaviour), `-re` not `-er` (centre), doubled
  consonants before suffixes (cancelled, modelling, travelling), `programme` for a scheme
  or event (reserve "program" for computer programs), `licence` as a noun vs `license` as
  a verb.
- Dates are written `DD-MON-YYYY` with the month as a capitalised 3-letter abbreviation,
  e.g. `04-OCT-2025` — use this exact format for any dated section heading.
- Distances/weights in metric, currency in `£`.

## Voice

- First person, conversational, like a personal logbook — not marketing copy.
- Modest and factual about results; dry, self-deprecating humour is fine when something
  didn't go to plan or didn't get finished.
- Technical caveats and asides belong in parentheses mid-sentence, not footnotes or callout
  boxes.
- Assume a technically literate reader. Explain genuinely obscure things briefly; don't
  over-explain common concepts.
- Don't pad content to hit a length target. A short stub post (a title, a goals section,
  one image) is a legitimate, normal post — length should follow naturally from how much
  there is to say, not the other way round.

## Structure

No YAML front matter, no Jekyll layout tags, no SEO boilerplate — plain Markdown only,
starting with a single `#` H1 title.

Pick whichever of these two shapes fits the content (most posts are one or the other):

**Log-style** (project logs, Retrochallenge entries, dev notes):
1. `#` Title
2. Optional short scene-setting sections, e.g. `## Goals`, `## Introduction`
3. `## Updates` containing dated subheadings `### DD-MON-YYYY`, oldest first, each a
   self-contained diary entry mixing narrative prose with fenced code blocks (terminal
   transcripts, source code, config) as needed
4. For a post that will accumulate several dated updates over time, add a reverse-
   chronological jump list directly under the H1 — 📍 for the newest entry, ‣ for older
   ones — linking to `#dd-mon-yyyy` anchors, followed by a `---` rule before the intro

**Report-style** (radio activations, project write-ups):
1. `#` Title
2. Short scene-setting paragraph
3. Optional bullet list of reference IDs/links (e.g. HEMA/POTA/WWFF references)
4. `###`-level sections for background, location, technical detail, equipment etc.
5. Photos as their own line (relative path), each optionally followed on the next line by
   an italicised one-line caption, e.g. `_Car Parking_`
6. Where relevant, a closing data table (log book, comparison, etc.) and/or a links/
   resources section

## Markdown mechanics

- Section headings: short, Title Case, plain description of content (`## The Radio`,
  `### The Ascent`) — no emoji in headings, no "TL;DR" boxes, no tag lists, no author bios.
- Fenced code blocks carry a language hint (` ```basic `, ` ```bash `, ` ```xml `) except
  plain terminal/session transcripts, which use a bare ` ``` `.
- Inline backticks for filenames, commands, frequencies and other short technical tokens.
- External links are inline Markdown (`[text](url)`), used liberally — callsigns to
  qrz.com, competitions to their home page, tools/repos to GitHub.
- Don't invent structural elements that aren't demonstrated in the existing posts.
```

## Open questions before I apply this

1. Anything from the above you want removed, tightened, or added before it goes into
   `CLAUDE.md`?
2. Do you want a worked example post included in `CLAUDE.md` itself (a short one, e.g.
   `retrostuff/rc2024_10.md`), or is the description above sufficient?
3. Should this file also tell Claude *where* new posts should live / how they get linked
   into `index.md` / `retrostuff.md`, or do you want to handle indexing yourself each time?
