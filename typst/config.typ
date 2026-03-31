#import "@preview/touying:0.7.0": *
#import "@preview/numbly:0.1.0": numbly
#import "@preview/fontawesome:0.6.0": fa-icon
#import themes.metropolis: *

#let bold(string) = [#text(fill: black, weight: "bold")[#string]]
#let indent() = [#h(30pt)]
#let notes_underline(string) = [#underline(offset: 3pt)[#string]]

#let large(string) = [#text(size: 20pt)[#string]]

#let notes_slide(content, title: "", number: "") = slide(
  title: [
    #text(font: "Latin Modern Sans", weight: "bold")[
      #if number != "" { [#title #h(1fr) #number] } else { [#title] }
    ]
  ],
)[#content]

#let notes_quote(string, title: "", details: "") = quote(
  attribution: [ #if details != "" { [#text(size: 18pt)[#bold[#title], #smallcaps[#details]]] } else {
    [#text(size: 18pt)[#bold[#title]]]
  }],
)[#indent()#emph[#string]#v(
    4pt,
  )]

#let unmarked-footnote(body) = {
  place(hide(footnote[#text(size: 14pt)[#h(3pt) #body]]))
}

#let notes_link(url, string, reference: "") = [#link(url)[ //
    #text(font: "Latin Modern Mono")[#underline(
        offset: 3pt,
      )[#string]
      #context [
        #fa-icon(
          "arrow-up-right-from-square",
          size: text.size / 1.5,
        )]]] #if reference != "" { [ \- #smallcaps[#reference]] }]

#let notes_footnote(body) = [#footnote[#text(size: 14pt)[#h(3pt) #body]]]

#let notes_footnote_link(url1, string1, reference1) = [#notes_footnote[#notes_link(
  url1,
  string1,
  reference: reference1,
)]]

#let notes_unmarked_footnote_link(url1, string1, reference1) = [#unmarked-footnote[#notes_link(
  url1,
  string1,
  reference: reference1,
)]]

#let notes-section-slide-fn = (level: 1, numbered: true, body) => touying-slide-wrapper(self => {
  self = utils.merge-dicts(self, config-page(fill: self.colors.neutral-lightest))
  touying-slide(self: self, {
    set align(horizon)
    show: pad.with(20%)
    set text(size: 40pt, weight: "bold")
    stack(
      dir: ttb,
      spacing: 1em,
      text(self.colors.neutral-darkest, utils.display-current-heading(
        level: level,
        numbered: numbered,
        style: auto,
      )),
      block(height: 2pt, width: 100%, spacing: 0pt, components.progress-bar(
        height: 2pt,
        self.colors.primary,
        self.colors.primary-light,
      )),
    )
    text(self.colors.neutral-dark, body)
  })
})

#let notes-theme(title: none, body) = {
  set quote(block: true)
  set text(font: "Latin Modern Sans")
  set heading(numbering: numbly("{1}.", default: "1.1"))

  show: metropolis-theme.with(
    aspect-ratio: "16-9",
    footer: self => self.info.institution,
    config-info(
      title: [#text(40pt)[#smallcaps[#title]]],
      subtitle: "",
      author: [#text(20pt, font: "Latin Modern Sans")[\ _Federico Busato_]],
      date: [#h(21.5cm) #datetime.today().display()],
    ),
    config-common(
      new-section-slide-fn: notes-section-slide-fn,
      reset-footnote-number-per-slide: false,
    ),
    config-page(margin: (top: 3em, bottom: 14pt, x: 2em)),
  )

  show outline.entry.where(
    level: 1,
  ): set block(above: 26pt)

  show smallcaps: set text(font: "Latin Modern Roman Caps")

  show quote: set pad(x: 4em)

  set footnote(numbering: n => text(weight: "extrabold")[#h(5pt)#str(n)])

  show raw.where(block: true): box.with(
    fill: rgb("#f0f0f0"),
  )
  show raw.where(block: true): set text(12pt, font: "Latin Modern Mono", weight: "extrabold")
  set raw(tab-size: 4)

  show outline.entry: it => link(
    it.element.location(),
    it.indented(it.prefix(), text(size: 24pt, weight: "bold")[#it.body()]),
  )
  show outline.entry.where(
    level: 1,
  ): set block(above: 40pt)
  show outline.entry.where(
    level: 2,
  ): set block(above: 16pt)
  show outline.entry.where(
    level: 2,
  ): it => link(
    it.element.location(),
    it.indented(it.prefix(), text(size: 22pt)[#it.body()]),
  )

  body
}
