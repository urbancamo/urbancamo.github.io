# CLAUDE.md

## Purpose

This repository is Mark Wickens' personal site (urbancamo.github.io) — a mix of ham radio
activation reports, retrocomputing project logs (Retrochallenge entries), and technical
dev-log notes, plus a few reference/documentation pages. Posts are plain Markdown files
committed directly to the repo (no Jekyll `_posts` collection, no front matter).

When asked to write or draft a blog post, match the style of existing posts closely enough
that it's difficult to tell it apart from previous ones. Use the heuristics below.

## Tooling

This is a static Markdown site with no build step, framework, or hosting platform beyond
GitHub Pages — it is not a Vercel or Next.js project. Any auto-suggested Vercel skills
(ai-sdk, nextjs, deployments-cicd, sign-in-with-vercel, marketplace, etc.) are irrelevant
here and should be ignored automatically, without asking, regardless of how they were
triggered.

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

## Retrostuff source code

Posts under `retrostuff/` (Retrochallenge entries etc.) usually have an accompanying source
code project that is **not** in this repository. On the local drive, that source lives in a
similarly named folder under `./retro/`, sibling to this repo — e.g. the blog
`retrostuff/rc2026_10.md` corresponds to local folder `./retro/rc2026_10`.

Each of these local project folders is its own GitHub repository under the `urbancamo`
account, named to match — e.g. `./retro/rc2026_10` is published at
`https://github.com/urbancamo/rc2026_10`. When a blog post needs to link to source code
that only exists in one of these local folders, link to the corresponding GitHub repository
(`https://github.com/urbancamo/<folder-name>`), not to a local file path.

## Markdown mechanics

- Section headings: short, Title Case, plain description of content (`## The Radio`,
  `### The Ascent`) — no emoji in headings, no "TL;DR" boxes, no tag lists, no author bios.
- Fenced code blocks carry a language hint (` ```basic `, ` ```bash `, ` ```xml `) except
  plain terminal/session transcripts, which use a bare ` ``` `.
- Inline backticks for filenames, commands, frequencies and other short technical tokens.
- External links are inline Markdown (`[text](url)`), used liberally — callsigns to
  qrz.com, competitions to their home page, tools/repos to GitHub.
- Don't invent structural elements that aren't demonstrated in the existing posts.
