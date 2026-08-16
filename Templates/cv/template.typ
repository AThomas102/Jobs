/// Shared CV layout helpers. No candidate content here.

#let muted = rgb("#555555")
#let rule = rgb("#c8c8c8")

/// Sets page, type, and list defaults for a CV document.
///
/// Args:
///   body: Document content to wrap.
///
/// Returns:
///   Styled content.
#let cv-init(body) = {
  set page(paper: "a4", margin: (x: 1.5cm, y: 1.4cm))
  set text(
    font: ("Noto Sans", "Liberation Sans", "FreeSans"),
    size: 10pt,
    fill: rgb("#1a1a1a"),
    lang: "en",
    region: "GB",
  )
  set par(leading: 0.55em, spacing: 0.65em, justify: false)
  set list(indent: 0.75em, body-indent: 0.4em, spacing: 0.45em, marker: [•])
  body
}

/// Renders a centred name and contact block.
///
/// Args:
///   name: Candidate name.
///   contacts: Contact line(s) under the name.
#let cv-header(name, contacts) = {
  align(center)[
    #text(size: 20pt, weight: "bold")[#name]
    #v(0.4em)
    #text(size: 8.5pt, fill: muted)[#contacts]
  ]
  v(0.35em)
}

/// Renders an uppercase section title with a rule.
///
/// Args:
///   title: Section name.
#let cv-section(title) = {
  v(0.7em)
  text(size: 10.5pt, weight: "bold")[#upper(title)]
  v(0.2em)
  line(length: 100%, stroke: 0.55pt + rule)
  v(0.45em)
}

/// Renders one employment entry.
///
/// Args:
///   role: Job title.
///   org: Organisation and location.
///   dates: Employment dates.
///   body: Bullet list of responsibilities and results.
#let cv-job(role, org, dates, body) = {
  v(0.15em)
  grid(
    columns: (1fr, auto),
    column-gutter: 0.75em,
    align: (left, horizon),
    text(weight: "bold")[#role],
    text(size: 9pt, fill: muted)[#dates],
  )
  text(size: 9.5pt, fill: muted)[#org]
  v(0.25em)
  body
  v(0.35em)
}

/// Renders a labelled skills grid.
///
/// Args:
///   items: Array of `(label, detail)` pairs.
#let cv-skills(items) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 0.6em,
    row-gutter: 0.35em,
    ..items.map(item => (
      text(weight: "bold")[#item.at(0):],
      item.at(1),
    )).flatten(),
  )
}

/// Renders one education entry.
///
/// Args:
///   degree: Qualification title.
///   institution: School or university.
///   dates: Attendance dates.
///   details: Optional extra line (modules, grades).
#let cv-education(degree, institution, dates, details: none) = {
  v(0.1em)
  grid(
    columns: (1fr, auto),
    column-gutter: 0.75em,
    align: (left, horizon),
    [#text(weight: "bold")[#institution]#text(fill: muted)[ — #degree]],
    text(size: 9pt, fill: muted)[#dates],
  )
  if details != none {
    v(0.15em)
    details
  }
  v(0.25em)
}
