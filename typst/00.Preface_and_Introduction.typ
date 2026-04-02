#import "config.typ": *

#show: notes-theme.with(title: [Preface and Introduction])

#title-slide()

// =====================================================================================================================

#notes_slide(title: "Preface", number: "1/2")[
  I started writing these notes because I keep reading recurring misleading information, without any evidence, about the impact of AI on software development. #bold[I find this narrative harmful and unfair, especially for students or people in their early career].

  While studying, I discovered several important topics related to my research that I think are worth mentioning. These include the impact of AI on employment, the illusion of consciousness, comparisons between the human brain and AI, the physical constraints of AI, skill formation, implications for society, software development, and several others.
  #v(20pt)

  The landscape of opinions about AI ranges from predictions of #bold[imminent societal or economic collapse] to #bold[people being overexcited and overly reliant on it] at the opposite extreme.

  #bold[The goal of these notes is to offer a more _balanced_ and _objective_ view of AI]
]

// =====================================================================================================================

#notes_slide(title: "Preface", number: "2/2")[

  To maintain focus on the main topics and avoid digressions, I preferred to leave out long descriptions and directly report data, research findings, anecdotal facts, and emblematic quotes from people with much more expertise than me. This helps to make the content succinct, not waste your time, and (hopefully) keep it appealing.
  #v(20pt)

  _These notes are a living document and will be updated with new research findings and community contributions._

  Check the latest version here #notes_link("https://github.com/federico-busato/A-More-Objective-View-of-AI", "A-More-Objective-View-of-AI")
]

// =====================================================================================================================

= Introduction <p1s>

// =====================================================================================================================

#notes_slide(title: "Introduction", number: "1/3")[

  Artificial Intelligence (AI) presents an unprecedented opportunity, not just as a _productivity booster_, but also to elevate people from domain-specific, expert-level tasks to #bold[designing higher-level intents].
  #v(20pt)

  Additionally, AI has the potential to #bold[enhance learning efficiency] and make skills more accessible, reducing technical barriers and #bold[enabling a wider range of people to perform complex tasks.]
  #notes_footnote_link(
    "https://arxiv.org/pdf/2507.07935",
    "Working with AI: Measuring the Applicability of Generative AI to Occupations",
    "Tomlinson et al., Microsoft Research, 2025",
  )
]

// =====================================================================================================================

#notes_slide(title: "Introduction", number: "2/3")[

  In the following slides, we disentangle the most common misconceptions related to AI, the role of human expertise, and the tendency to attribute human traits to Large Language Models (LLMs). Contrary to _sensationalist_ statements based on "personal feelings", which are very often present on social media, the following analysis is grounded in recent research data. A brief summary:
]

// =====================================================================================================================

#notes_slide(title: "Introduction", number: "3/3")[
  We start these notes by investigating why #bold[the human brain and AI systems are intrinsically incomparable, both structurally and functionally] and, closely related, why #bold[LLMs should not be considered conscious].

  #v(20pt)
  Next, we will highlight the problem of #bold[hallucinations in AI], the #bold[uncertainties] in the impact of AI on productivity, the #bold[unlikely exponential growth] of AI capabilities in the short/medium term, its #bold[limitations], and the #bold[future impact of AI] on skill formation and potential social risks.

  #v(20pt)
  In the second part of these notes, we will focus on the relation between #bold[AI and software development]. We will explore the impact of AI on software employment, the role of software engineering, and the risks of AI-generated code.
]
