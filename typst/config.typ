#import "@preview/touying:0.7.0": *
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

