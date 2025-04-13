#import "@preview/touying:0.6.1": *


#let cell = block.with(width: 100%, height: 100%, above: 0pt, below: 0pt, outset: 0pt, breakable: false)

#let simple-navigation(
  self: none,
  short-heading: true,
  primary: white,
  secondary: gray,
  background: black,
  logo: none,
) = (
  context {
    let body() = {
      let sections = query(heading.where(level: 1))
      if sections.len() == 0 {
        return
      }
      let current-page = here().page()
      set text(size: 1em)
      for (section, next-section) in sections.zip(sections.slice(1) + (none,)) {
        set text(fill: if section.location().page() <= current-page and (
          next-section == none or current-page < next-section.location().page()
        ) {
          primary
        } else {
          secondary
        })
        box(inset: 0.5em)[#link(
            section.location(),
            if short-heading {
              utils.short-heading(self: self, section)
            } else {
              section.body
            },
          )<touying-link>]
      }
    }
    block(
      fill: background,
      inset: 0pt,
      outset: 0pt,
      grid(
        align: center + horizon,
        columns: (1fr, auto),
        rows: 1.8em,
        gutter: 0em,
        cell(
          fill: background,
          body(),
        ),
        block(fill: background, inset: 4pt, height: 100%, text(fill: primary, logo)),
      ),
    )
  }
)