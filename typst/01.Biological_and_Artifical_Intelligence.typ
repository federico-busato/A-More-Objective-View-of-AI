#import "config.typ": *

#show: notes-theme.with(title: [Biological and Artificial Intelligence])

#title-slide()

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Biological and Artificial Intelligence] <touying:hidden>

#outline(title: none)

// =====================================================================================================================

= Introduction

// =====================================================================================================================

#notes_slide(title: "Introduction")[
  One of the most common topics is the comparison between biological and artificial intelligence. Often, we superficially attribute human-like characteristics to AI systems, anthropomorphizing LLMs and chatbots, and even suggesting human-AI intimacy.
  #notes_footnote_link(
    "https://www.sciencedirect.com/science/article/pii/S2451958825001307",
    "Potential and pitfalls of romantic Artificial Intelligence (AI) companions: A systematic review",
    "Ho et al., Computers in Human Behavior Reports, 2025",
  )
  On the other hand, a deeper look clearly indicates the opposite conclusion.

  These notes by investigating why #bold[the human brain and AI systems are intrinsically incomparable, both structurally and functionally] and, closely related, why #bold[LLMs should not be considered conscious].
]

// =====================================================================================================================

= AI and Human Brain are _Structurally_ Different

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Structurally Different", number: "1/6")[

  The human brain has 86 billion neurons and 100 trillion synapses. We might intuitively think that once an AI system reaches this threshold, intelligence, or even consciousness, will naturally arise. However, recent studies argue that to reach the complexity of even one biological neuron, a modern deep neural network requires between five and eight layers of nodes #notes_footnote_link("https://www.sciencedirect.com/science/article/pii/S0896627321005018", "Single cortical neurons as deep artificial neural networks", "Beniaguev et al., Neuron, 2021"). Real neurons might be even more complex.

  #notes_quote(title: "Computation's Limits: What a Neuron Teaches Us", details: [\ ocrampal, 2025])[
    "The neuron teaches us something uncomfortable: computation isn't a lens revealing neural truth --- #bold[it's a filter that shows us only the biology that looks like a computer]. Everything else gets discarded before we even begin our analysis."
    #notes_footnote_link(
      "https://ocrampal.com/what-a-neuron-teaches-us-about-computations-limits/",
      "Computation's Limits: What a Neuron Teaches Us",
      "M. Palombi, ocrampal.com, 2025",
    ) <ocrampal>
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Structurally Different", number: "2/6")[

  #notes_quote(title: "Computation's Limits: What a Neuron Teaches Us", details: [\ ocrampal, 2025])[
    "#bold[The neuron operates across multiple timescales] without coordinating them, generates its own organizational principles without pre-specification, and contextually determines what causes what.

    #v(20pt)
    #indent()... [The neuron] #bold[continuously reorganizes its own processing architecture] based on its history, current state, and environment. It creates new coupling rules, new timescale relationships, new responses that couldn't be predicted from its prior state.

    #v(20pt)
    #indent()... the ability to refuse based on context, history, and metabolic economics is precisely what makes the neuron alive and what makes it #bold[incomputable].\" @ocrampal
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Structurally Different", number: "3/6")[

  #set list(spacing: 60pt)
  - #bold[The human brain is extremely sparse]. The probability of two neurons being connected is \~ 1 in 100 million. This is in sharp contrast to AI models that show mostly dense organization.

  - #bold[The human brain is incredibly energy efficient]. It operates on about 20 watts of power. A recent study estimates biological computing is #notes_underline[\~ 1 billion times more efficient] than its AI counterpart.
    #notes_footnote_link(
      "https://www.frontiersin.org/journals/artificial-intelligence/articles/10.3389/frai.2023.1240653/full",
      "The energy challenges of artificial superintelligence",
      "Stiefel & Coggan, Frontiers in AI, 2023",
    )
]

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Structurally Different", number: "4/6")[

  #set list(spacing: 60pt)
  - #bold[The human brain is subject to continuous learning]. It performs inference and learning #notes_underline[concurrently], in #notes_underline[real time].

  - #bold[The biological brain performs forward-only propagation]
    #notes_footnote_link(
      "https://arxiv.org/abs/2212.13345",
      "The Forward-Forward Algorithm: Some Preliminary Investigations",
      "G. Hinton, 2022",
    ). It replaces "back-propagation" with feedback loops and local learning rules.

  - #bold[The human brain is a non-von Neumann architecture.] Computation and memory are co-located. Knowledge spreads across a pattern of activity over many neurons and synapses. Computation is distributed and massively parallel.
    #notes_footnote_link(
      "https://www.frontiersin.org/journals/cellular-neuroscience/articles/10.3389/fncel.2023.1220030/full",
      "The computational power of the human brain",
      "P. J. Gebicke-Haerter, Frontiers in Cellular Neuroscience, 2023",
    )
]

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Structurally Different", number: "5/6")[
  #v(-15pt)

  - #bold[Continuous dynamics and perception].

  #set text(size: 19.5pt)
  #notes_quote(
    title: "On biological and artificial consciousness",
    details: [\ Neuroscience & Biobehavioral Reviews, 2026],
  )[
    #v(-40pt)
    #indent()"Continuous dynamics may offer functional advantages that cannot be recovered by discrete approximations, regardless of how fine they are.

    #indent()... Biological systems, by contrast, evolve continuously...#bold[This may be essential for the phenomenology of temporal flow in consciousness].

    #indent()... Whilst discrete natural number arithmetic is fundamentally marked by incompleteness and incomputability, continuous arithmetic over the real numbers admits a #bold[full decision procedure] at the level of the formal system."
    #notes_footnote_link(
      "https://www.sciencedirect.com/science/article/pii/S0149763425005251?via%3Dihub",
      "On biological and artificial consciousness: A case for biological computationalism",
      "Milinkovic & Aru, Neuroscience & Biobehavioral Reviews, 2026",
    ) <consciousness>
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Structurally Different", number: "6/6")[

  - #bold[Metabolic constraints].

  #notes_quote(
    title: "On biological and artificial consciousness",
    details: [\ Neuroscience & Biobehavioral Reviews, 2026],
  )[
    #indent() "Biological computation operates under stringent energy limits, and this constraint is not merely a boundary condition but a #bold[driving principle of neural organisation].

    #indent() ... Metabolic constraints are therefore constitutive forces, shaping how neural systems process, transmit, and integrate information across scales.\"
    @consciousness
  ]
]

// =====================================================================================================================

= AI and Human Brain are _Functionally_ Different

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "1/6")[

  - Current AI models are #bold["stochastic parrots"]. #notes_footnote_link(
      "https://dl.acm.org/doi/10.1145/3442188.3445922",
      "On the Dangers of Stochastic Parrots",
      "Conference on Fairness, Accountability, and Transparency, 2021",
    )

    #notes_quote(
      title: "AI Is Nothing Like a Brain, and That's OK",
      details: [\ Quanta Magazine, 2025],
    )[
      #indent() "The algorithms don't really \"know\" things the way we do. They do not understand anything. They learn mainly by #bold[recognizing patterns] in their training data;

      #indent() ... We don't know how to infuse machines with knowledge beyond feeding it a set of facts.\"  #notes_footnote_link(
        "https://www.quantamagazine.org/ai-is-nothing-like-a-brain-and-thats-ok-20250430",
        "AI Is Nothing Like a Brain, and That's OK",
        "Quanta Magazine, 2025",
      )]
]

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "2/6")[

  #notes_quote(
    title: [Language models cannot reliably distinguish belief from knowledge and fact],
    details: [\ Nature, 2025],
  )[
    #indent() "Failure to distinguish belief from knowledge, and fact from fiction can mislead diagnoses, distort judicial judgments and amplify misinformation.

    #indent() ... while recent models show competence in recursive knowledge tasks, they still rely on inconsistent reasoning strategies, #bold[suggesting superficial pattern matching rather than robust epistemic understanding].\"
    #notes_footnote_link(
      "https://www.nature.com/articles/s42256-025-01113-8",
      "Language models cannot reliably distinguish belief from knowledge and fact",
      "Suzgun et al., Nature Machine Intelligence, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "3/6")[

  #v(-15pt)
  #notes_quote(
    title: "Punctuation and Predicates in Language Models",
    details: [\ Chauhan et al., 2025],
  )[
    #indent() "Punctuation/format sensitivity as a reliability problem: #bold[accuracy can vary substantially across different prompt formats]."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2508.14067",
      "Punctuation and Predicates in Language Models",
      "Chauhan et al., arXiv, 2025",
    )
    #v(-5pt)
  ]

  #v(-15pt)
  #notes_quote(
    title: "Shortcoming Makes LLMs Less Reliable",
    details: [ MIT News, 2025],
  )[
    "LLMs learn spurious correlations between a prompt's syntactic template and specific domains. The model may incorrectly rely solely on this learned association when answering questions, #bold[rather than on an understanding] of the query and subject matter."
    #notes_footnote_link(
      "https://news.mit.edu/2025/shortcoming-makes-llms-less-reliable-1126",
      "Shortcoming Makes LLMs Less Reliable",
      "A. Zewe, MIT News, 2025",
    )#super(",")
    #notes_footnote_link(
      "https://arxiv.org/pdf/2509.21155",
      "Learning the Wrong Lessons: Syntactic-Domain Spurious Correlations in Language Models",
      "Shaib et al., arXiv, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "4/6")[

  - #bold[AI models struggle to generalize beyond their training sets]. The classic example of this behavior is the accuracy disparity between English and non-English results.
  #set text(size: 19pt)

  #notes_quote(
    title: "A survey of multilingual large language models",
    details: [\ Patterns, 2025],
  )[
    "Performance in English vs. other languages. #bold[All MLLMs exhibit consistent and strong performance in English], attributable to the extensive availability of English training data and the emphasis on English during model development."
    #notes_footnote_link(
      "https://www.sciencedirect.com/science/article/pii/S2666389924002903",
      "A survey of multilingual large language models",
      "Qin et al., Patterns, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "5/6")[

  #notes_quote(
    title: [The performance of OpenAI ChatGPT-4 and\ Google Gemini in virology multiple-choice questions],
    details: [\ BMC Research Notes, 2024],
  )[
    "ChatGPT-4 and Gemini performed #bold[better in English compared to Arabic]. [ChatGPT-4 80% → 65%, Gemini 62.5% → 55% ]"
    #notes_footnote_link(
      "https://link.springer.com/article/10.1186/s13104-024-06920-7",
      "The performance of OpenAI ChatGPT-4 and Google Gemini in virology multiple-choice questions: a comparative analysis of English and Arabic responses",
      "Sallam et al., BMC Research Notes, 2024",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "6/6")[

  #notes_quote(
    title: [Mirage: The Illusion of Visual Understanding],
    details: [\ Asadi et al., 2026],
  )[
    "Frontier models readily generate detailed image descriptions and elaborate reasoning traces, including    pathology-biased clinical findings, #bold[for images never provided].

    #indent()...  In the most extreme case, our model achieved the top rank on a standard chest Xray question-answering benchmark#bold[ without access to any images]."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2603.21687",
      "Mirage: The Illusion of Visual Understanding",
      "Asadi et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

= The Illusion of Consciousness

// =====================================================================================================================

#notes_slide(title: "The Intelligence Illusion")[

  #notes_quote(
    title: "The intelligence illusion: why AI isn’t as smart as it is made out to be",
    details: [\ Nature, Book Review, 2026],
  )[
    "#bold[Who is being deceived?]

    #bold[The general public, by the technology companies and organizations that benefit from the hype around AI]. These companies are in a race to develop the technology and are incentivized to promote the idea of human-like artificial general intelligence to secure funding and market dominance. Members of the scientific community, particularly those who are not directly involved in the race for AI funding, acknowledge the reality that AI is a set of specialized tools, rather than a unified intelligent entity. #bold[This distinction is crucial, but it is blurred by commercial interests that amplify the illusion for monetary gain.]"
    #notes_footnote_link(
      "https://www.nature.com/articles/d41586-026-00882-5",
      "The intelligence illusion: why AI isn’t as smart as it is made out to be",
      "Nature, Book Review, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "The Illusion of Consciousness")[
  #set text(size: 19pt)

  #notes_quote(
    title: "There is no such thing as conscious artificial intelligence",
    details: [\ Nature, 2025],
  )[
    "the association between consciousness and the computer algorithms used today...#bold[is deeply flawed]. We believe that these flawed associations arise from a #bold[lack of technical knowledge] and the way several new technologies (especially LLMs) work, which can create the #bold[illusion of consciousness].

    ... Unfortunately, because the remarkable linguistic abilities of #bold[LLMs are increasingly capable of #underline(offset: 3pt)[misleading] people], people may attribute imaginary qualities to LLMs."
    #notes_footnote_link(
      "https://www.nature.com/articles/s41599-025-05868-8",
      "There is no such thing as conscious artificial intelligence",
      "Porębski & Figura, Nature, Humanities and Social Sciences Communications, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Final Remarks")[

  #notes_quote(title: "The Mythology Of Conscious AI", details: [\ Noema Magazine, 2026])[
    "If we confuse ourselves too readily with our machine creations, we not only overestimate them, we also #bold[underestimate ourselves]."
    #notes_footnote_link(
      "https://www.noemamag.com/the-mythology-of-conscious-ai/",
      "The Mythology Of Conscious AI",
      "A. Seth, Noema Magazine, 2026",
    )
  ]
]

