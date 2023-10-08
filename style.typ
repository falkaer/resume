#let left_column_size = 25%
#let grid_column_gutter = 8pt

#let main_color = rgb("#c72e2f")
#let heading_color = main_color
#let job_color = rgb("#737373")
#let dateformat = "[month]/[year]"

#let setup(
  author: "",
  body
) = {
  set document(author: author, title: "Resume")
  set page(
    paper: "a4",
    numbering: "1 / 1",
    header: [
      #set align(right)
      #set text(fill: luma(25%), size: 10pt)
      Last updated #datetime.today().display("[month repr:short] [day padding:none], [year]")
    ],
    number-align: center,
    margin: 1.25cm,
  )
  set text(
    font: ("Latin Modern Sans", "Inria Sans"), 
    hyphenate: false,
    lang: "en", 
    fallback: true
  )

  show math.equation: set text(weight: 400)

  set list(marker: box(circle(radius: 0.2em, stroke: heading_color), inset: (top: 0.2em)))
  set enum(numbering: (n) => text(fill: heading_color, [#n.]))
  
  show heading.where(level: 1): element => [
    #text(element.body, fill: heading_color, weight: 400)
  ]

  show heading.where(level: 2): element => [
    #text(element.body, size: 0.8em)
  ]

  show heading.where(level: 3): element => [
    #text(element.body, size: 1em, weight: 400, style: "italic")
  ]

  body
}

#let experience(subject, location, from, to) = {
  grid(
    columns: (auto, 1fr),
    {
      heading([#subject,], level: 2)
      text(location, weight: 400, style: "italic")
    },
    align(right,
      [
        #from.display(dateformat) -- #if to == none [Present] else {to.display(dateformat)}
      ]
    )
  )
}

#let iconlink(icon, url, desc) = {
  link(url)[
    #align(horizon)[
      #box(height: 1em, baseline: 20%)[#pad(right: 0.1em)[#image(icon)]]
      #text(desc)
    ]
  ]
}

#let icontext(icon, desc) = {
  align(horizon)[
    #box(height: 1em, baseline: 20%)[#pad(right: 0.1em)[#image(icon)]]
    #text(desc)
  ]
}

