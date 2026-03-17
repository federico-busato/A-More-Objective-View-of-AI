#import "@preview/touying:0.6.3": *
#import "@preview/fontawesome:0.6.0": fa-icon
#import themes.metropolis: *

#let bold(string) = [#text(fill: black, weight: "bold")[#string]]
#let indent() = [#h(30pt)]
#let mcpp_underline(string) = [#underline(offset: 3pt)[#string]]


#let large(string) = [#text(size: 20pt)[#string]]

#let mcpp_slide(content, title: "", number: "") = slide(
  title: [
    #text(font: "Latin Modern Sans", weight: "bold")[
      #if number != "" { [#title #h(1fr) #number] } else { [#title] }
    ]
  ],
)[#content]

#let mcpp_simple_quote(string) = quote()[#indent()#emph[#string]#v(
    4pt,
  )]

#let mcpp_quote(string, author: "", details: "") = quote(
  attribution: [ #if details != "" { [#bold[#author], #emph[#details]] } else { [#bold[#author]] }],
)[#indent()#emph[#string]#v(
    4pt,
  )]

#let mcpp_quote_small(string, title: "", details: "") = quote(
  attribution: [ #if details != "" { [#text(size: 18pt)[#bold[#title], #smallcaps[#details]]] } else {
    [#text(size: 18pt)[#bold[#title]]]
  }],
)[#indent()#emph[#string]#v(
    4pt,
  )]


#let unmarked-footnote(body) = {
  place(hide(footnote[#text(size: 14pt)[#h(3pt) #body]]))
}

#let mcpp_footnote(body) = [#footnote[#text(size: 14pt)[#h(3pt) #body]]]

#let mcpp_link(url, string, reference: "") = [#link(url)[ //
    #text(font: "Latin Modern Mono")[#underline(
        offset: 3pt,
      )[#string]
      #context [
        #fa-icon(
          "arrow-up-right-from-square",
          size: text.size / 1.5,
        )]]] #if reference != "" { [ \- #smallcaps[#reference]] }]

#let mcpp_footnote_link(url1, string1, reference1) = [#mcpp_footnote[#mcpp_link(url1, string1, reference: reference1)]]

#let mcpp_unmarked_footnote_link(url1, string1, reference1) = [#unmarked-footnote[#mcpp_link(
  url1,
  string1,
  reference: reference1,
)]]

