// Shared Typst styling for the printable PDFs (calculator/_guide-pdf.qmd, sv/calculator/_guide-pdf.qmd).

// Thin gray line above each section heading
#show heading.where(level: 1): it => {
  line(length: 100%, stroke: 0.5pt + gray)
  it
}

// Callouts without a title bar, like the minimal callouts on the website
#let callout(body: [], title: none, background_color: none, icon: none, icon_color: black, body_background_color: none) = {
  block(
    breakable: false,
    width: 100%,
    inset: (left: 10pt, y: 4pt),
    stroke: (left: 2pt + icon_color),
    body
  )
}
