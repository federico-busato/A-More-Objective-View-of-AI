#import "config.typ": *
#import "@preview/touying:0.6.3": *
#import "@preview/numbly:0.1.0": numbly
#import "@preview/fontawesome:0.6.0": fa-icon
#import themes.metropolis: *

#set quote(block: true)
#set text(font: "Latin Modern Sans")
#set heading(numbering: numbly("{1}.", default: "1.1"))

// =====================================================================================================================

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-info(
    title: "",
    subtitle: [#text(40pt)[#smallcaps[(A More) Objective View of AI]]],
    author: [#text(20pt, font: "Latin Modern Sans")[\ _Federico Busato_]],
    date: [#h(21.5cm) #datetime.today().display()],
  ),
  config-common(reset-footnote-number-per-slide: false),
  config-page(margin: (top: 3em, bottom: 14pt, x: 2em)),
)

//======================================================================================================================

#show outline.entry.where(
  level: 1,
): set block(above: 26pt)

#show smallcaps: set text(font: "Latin Modern Roman Caps")

#show quote: set pad(x: 4em)

#set footnote(numbering: n => text(weight: "extrabold")[#h(5pt)#str(n)])

// =====================================================================================================================

#show raw.where(block: true): box.with(
  fill: rgb("#f0f0f0"),
  //  inset: 8pt,
  //  radius: 5pt,
)
#show raw.where(block: true): set text(12pt, font: "Latin Modern Mono", weight: "extrabold")
#set raw(tab-size: 4)

#show outline.entry: it => link(
  it.element.location(),
  it.indented(it.prefix(), text(size: 24pt, weight: "bold")[#it.body()]),
)
#show outline.entry.where(
  level: 1,
): set block(above: 40pt)
#show outline.entry.where(
  level: 2,
): set block(above: 16pt)
#show outline.entry.where(
  level: 2,
): it => link(
  it.element.location(),
  it.indented(it.prefix(), text(size: 22pt)[#it.body()]),
)

#title-slide()

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[A More Objective View of AI #h(1fr) 1/4] <touying:hidden>

#outline(target: selector(heading).after(<p1s>).before(<p1e>), title: none)

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[A More Objective View of AI #h(1fr) 2/4] <touying:hidden>

#outline(target: selector(heading).after(<p2s>).before(<p2e>), title: none)

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[A More Objective View of AI #h(1fr) 3/4] <touying:hidden>

#outline(target: selector(heading).after(<p3s>).before(<p3e>), title: none)
// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[A More Objective View of AI #h(1fr) 4/4] <touying:hidden>

#outline(target: selector(heading).after(<p4s>).before(<p4e>), title: none)

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

  #v(20pt)
  One of the most common topics is the comparison between biological and artificial intelligence. Often, we superficially attribute human-like characteristics to AI systems, anthropomorphizing LLMs and chatbots, and even suggesting human-AI intimacy.
  #notes_footnote_link(
    "https://www.sciencedirect.com/science/article/pii/S2451958825001307",
    "Potential and pitfalls of romantic Artificial Intelligence (AI) companions: A systematic review",
    "Ho et al., Computers in Human Behavior Reports, 2025",
  )
  On the other hand, a deeper look clearly indicates the opposite conclusion.
]

// =====================================================================================================================

#notes_slide(title: "Introduction", number: "3/3")[
  We start these notes by investigating why #bold[the human brain and AI systems are intrinsically incomparable, both structurally and functionally] and, closely related, why #bold[LLMs should not be considered conscious].

  #v(20pt)
  Next, we will highlight the problem of #bold[hallucinations in AI], the #bold[uncertainties] in the impact of AI on productivity, the #bold[unlikely exponential growth] of AI capabilities in the short/medium term, its #bold[limitations], and the #bold[future impact of AI] on skill formation and potential social risks.

  #v(20pt)
  In the second part of these notes, we will focus on the relation between #bold[AI and software development]. We will explore the impact of AI on software employment, the role of software engineering, and the risks of AI-generated code.
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

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "1/5")[

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

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "2/5")[

  #notes_quote(
    title: [Language models cannot reliably distinguish\ belief from knowledge and fact],
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

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "3/5")[

  #v(-15pt)
  #notes_quote(
    title: "Punctuation and Predicates in Language Models",
    details: [\ Chauhan et al., 2025],
  )[
    #indent() "Punctuation/format sensitivity as a reliability problem: #bold[accuracy can vary substantially across different prompt\ formats]."
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

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "4/5")[

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

#notes_slide(title: "AI and Human Brain are Functionally Different", number: "5/5")[

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

= The Illusion of Consciousness

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

// =====================================================================================================================

= Unlikely Exponential Growth  <p1e>

// =====================================================================================================================

#notes_slide(title: "Unlikely Exponential Growth", number: "1/4")[

  #set list(spacing: 35pt)
  - #bold[Fundamental Physical Limits of Transistors and Memory].

    #set list(spacing: 25pt)
    - The thermodynamic minimum gate length of a _transistor_ will likely be reached by 2030, while the limits of photolithography are expected around 2029. #notes_footnote_link(
        "https://asteriskmag.com/issues/03/the-transistor-cliff",
        "The Transistor Cliff",
        "S. Constantin, 2023",
      )

    - _Memory bandwidth_ has been increasing far more slowly than FLOP/s, at 30x in the last 20 years (1.5x/2yr), while FLOP/s have increased 90,000x in the same period (3x/2yr). This is a much more conservative constraint on potential AI growth. #notes_footnote_link(
        "https://ieeexplore.ieee.org/document/10477550",
        "AI and Memory Wall",
        "Gholami et al., IEEE Micro, 2024",
      )#super(",") #notes_footnote_link(
        "https://arxiv.org/pdf/2601.05047",
        "Challenges and Research Directions for Large Language Model Inference Hardware",
        "Ma and Patterson, Google, 2026",
      )
]

// =====================================================================================================================

#notes_slide(title: "Unlikely Exponential Growth", number: "2/4")[

  #set list(spacing: 40pt)
  - #bold[Hardware Resource Constraints]. Reconstructing one cubic millimeter of human temporal cortex (\~50-57k cells and \~130-150M synapses) generated 1.4 Petabytes of data. Scaling to the full human brain would require 1.6 zettabytes of storage costing \$50 billion and spanning 140 acres. #notes_footnote_link(
      "https://research.google/blog/a-browsable-petascale-reconstruction-of-the-human-cortex/",
      "A Browsable Petascale Reconstruction of the Human Cortex",
      "Blakely et al., Google, 2021",
    )#super(",") #notes_footnote_link(
      "https://www.tomshardware.com/tech-industry/full-scan-of-1-cubic-millimeter-of-brain-tissue-took-14-petabytes-of-data-equivalent-to-14000-full-length-4k-movies",
      "Full scan of 1 cubic millimeter of brain tissue took 1.4 petabytes of data, equivalent to 14,000 4K movies",
      "S. Grimm, Tom's Hardware, 2024",
    )

  - #bold[Datacenters require 24/7 energy]. Solar and wind energy are not suitable for this purpose. On average, a nuclear power plant takes about #notes_underline[9.4 years] to build, with an additional #notes_underline[3-4 years] for the licensing process. #notes_footnote_link(
      "https://visualizingenergy.org/global-nuclear-reactor-construction-starts-and-duration-1949-2023/",
      "Global nuclear reactor construction starts and duration, 1949-2023",
      "Cleveland & Mirkova, Boston University, 2024",
    )

]

// =====================================================================================================================

#notes_slide(title: "Unlikely Exponential Growth", number: "3/4")[

  #set text(size: 18pt)
  #v(-50pt)
  #quote()[
    #indent() #emph["#bold[The data center share of U.S. total electricity demand in 2030 ranges from 9% to 17%, an increase from 4-5% today]. At the state level, continued development of the largest DC market in Virginia implies a share increasing to between 39% and 57% by 2030."]
  ]

  #v(-10pt)
  #align(center)[
    #image("01.notes_on_AI/datacenter_energy.png", width: 60%)
  ]

  #v(-50pt)
  #notes_unmarked_footnote_link(
    "https://powering-intelligence.epri.com/executive-summary.html",
    "Powering Intelligence 2026",
    "EPRI, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: "Unlikely Exponential Growth", number: "4/4")[

  #set list(spacing: 40pt)
  - #bold[Run out of data]. AI training will exhaust its data by 2027, or by 2032 if the rate of computing growth slows down. #notes_footnote_link(
      "https://epoch.ai/blog/will-we-run-out-of-data-limits-of-llm-scaling-based-on-human-generated-data",
      "Will we run out of data? Limits of LLM scaling based on human-generated data",
      "Villalobos et al., EpochAI, 2024",
    )

  - #bold[AI quality degradation when trained on recursively generated data]. AI-generated content has surpassed the _quantity_ of human-written articles. This implies that AI models are trained on increasingly low-quality data, reinforcing hallucinations.
    #notes_footnote_link(
      "https://graphite.io/five-percent/more-articles-are-now-created-by-ai-than-humans",
      "More Articles Are Now Created by AI Than Humans",
      "Paredes et al., Graphite, 2025",
    )#super(",")
    #notes_footnote_link(
      "https://www.nature.com/articles/s41586-024-07566-y",
      "AI models collapse when trained on recursively generated data",
      "Shumailov et al., Nature, 2024",
    )#super(",")
    #notes_footnote_link(
      "https://aclanthology.org/2024.findings-acl.103.pdf",
      "A Shocking Amount of the Web is Machine Translated: Insights from Multi-Way Parallelism",
      "Thompson et al., Association for Computational Linguistics, 2024",
    )#super(",")
    #notes_footnote_link(
      "https://ahrefs.com/blog/what-percentage-of-new-content-is-ai-generated/",
      "74% of New Webpages Include AI Content (Study of 900k Pages)",
      "Law et al., Ahrefs, 2025",
    )
]

// =====================================================================================================================

= AI Technical Limitations  <p2s>

// =====================================================================================================================

== Hallucinations are Mathematically Inevitable

// =====================================================================================================================

#notes_slide(title: "Hallucinations are Mathematically Inevitable", number: "1/4")[

  #notes_quote(
    title: [OpenAI admits AI hallucinations are mathematically inevitable,\ not just engineering flaws],
    details: [\ OpenAI, GeorgiaTech, 2025],
  )[
    #indent() "large language models sometimes guess when uncertain, producing plausible yet incorrect statements instead of admitting uncertainty.

    #indent() ... #bold[Unlike human intelligence, it lacks the humility to acknowledge uncertainty]. When unsure, it doesn't defer to deeper research or human oversight; instead, it often presents estimates as facts.
    #notes_footnote_link(
      "https://www.computerworld.com/article/4059383/openai-admits-ai-hallucinations-are-mathematically-inevitable-not-just-engineering-flaws.html",
      "OpenAI admits AI hallucinations are mathematically inevitable, not just engineering flaws",
      "G. Swain, ComputerWorld, 2025",
    )#super(",")
    #notes_footnote_link(
      "https://arxiv.org/pdf/2509.04664",
      "Why Language Models Hallucinate",
      "Kalai et al. (OpenAI, GeorgiaTech), arXiv, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Hallucinations are Mathematically Inevitable", number: "2/4")[

  #notes_quote(
    title: [Hallucination is Inevitable:
      An Innate Limitation of Large Language Models
    ],
    details: [\ Xu et al., 2026],
  )[
    "hallucination is inevitable for computable LLMs if the ground truth function is any computable function. Since the formal world is a part of the real world, #bold[we further conclude that it is impossible to eliminate hallucination in the real world LLMs]."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2401.11817",
      "Hallucination is Inevitable: An Innate Limitation of Large Language Models",
      "Xu et al., 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Hallucinations are Mathematically Inevitable", number: "3/4")[

  #notes_quote(title: "GPTZero")[
    "300 papers under review by the prestigious International Conference on Learning Representations (ICLR). We discovered that 50 submissions included at least one obvious hallucination.

    #indent()... After scanning 4841 papers accepted by the equally prestigious Conference on Neural Information Processing Systems (NeurIPS), we discovered 100s of hallucinated citations.\"
    #notes_footnote_link(
      "https://gptzero.me/news/iclr-2026/",
      "GPTZero finds over 50 new hallucinations in ICLR 2026 submissions",
      "Shmatko et al., GPTZero, 2025",
    )#super(",")
    #notes_footnote_link(
      "https://gptzero.me/news/neurips/",
      "GPTZero finds 100 new hallucinations in NeurIPS 2025 accepted papers",
      "Shmatko et al., GPTZero, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Hallucinations are Mathematically Inevitable", number: "4/4")[

  #notes_quote(title: "Deloitte goes all in on AI", details: [\ TechCrunch, 2025])[
    "The department had commissioned a \$439,000 'independent assurance review' from Deloitte, which was published earlier this year. The Australian Financial Review reported in August the review had a number of errors, #bold[including multiple citations to non-existent academic reports] (AI hallucinations)."
    #notes_footnote_link(
      "https://techcrunch.com/2025/10/06/deloitte-goes-all-in-on-ai-despite-having-to-issue-a-hefty-refund-for-use-of-ai/",
      "Deloitte goes all in on AI - despite having to issue a hefty refund for use of AI",
      "R. Szkutak, TechCrunch, 2025",
    )
  ]
]

// =====================================================================================================================

== Generalization

#notes_slide(title: "Generalization")[

  - #bold[Lack of generalization beyond the training data.]

  #notes_quote(title: "ARC Prize 2025", details: [\ Chollet et al., 2026])[
    "#bold[AI reasoning performance remains fundamentally constrained by knowledge coverage, a characteristic distinct from human reasoning which is capable of extreme generalization]. While this enables reliable automation of tasks with sufficient knowledge coverage and verifiable feedback signals, it also introduces new forms of #notes_underline[overfitting]."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2601.10904",
      "ARC Prize 2025: Technical Report",
      "Chollet et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

== Creativity

#notes_slide(title: "Creativity", number: "1/2")[

  - #bold[Perceived AI creativity degrades into template-like recombination.]

  #notes_quote(title: "Echoes in AI", details: [\ PNAS, 2025])[
    "the lack of diversity in these LLM-generated outputs reveals itself. We show that short stories generated in this way #bold[often contain repetitive combinations of plot elements], while human-written stories maintain a higher level of uniqueness."
    #notes_footnote_link(
      "https://www.pnas.org/doi/10.1073/pnas.2504966122",
      "Echoes in AI: Quantifying lack of plot diversity in LLM outputs",
      "Xu et al., PNAS, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Creativity", number: "2/2")[

  #notes_quote(
    title: [Generative AI enhances individual creativity\ but reduces the collective diversity of novel content],
    details: [\ Science Advances, 2024],
  )[
    "#bold[generative AI-enabled stories are more similar to each other than stories by humans alone]. These results point to an increase in individual creativity at the risk of losing collective novelty."
    #notes_footnote_link(
      "https://www.science.org/doi/10.1126/sciadv.adn5290",
      "Generative AI enhances individual creativity but reduces the collective diversity of novel content",
      "Doshi & Hauser, Science Advances, 2024",
    )
  ]

  #notes_quote(
    title: [I don't know if I like working at higher levels of abstraction],
    details: [\ X. Iaso, 2026],
  )[
    "#bold[Everything becomes homogeneous, converging toward the average. The average makes nobody feel anything.]"
    #notes_footnote_link(
      "https://xeiaso.net/blog/2026/ai-abstraction/",
      "I don't know if I like working at higher levels of abstraction",
      "X. Iaso, 2026",
    )
  ]
]

// =====================================================================================================================

== Production Quality

#notes_slide(title: "Production Quality", number: "1/2")[

  #notes_quote(
    title: "Remote Labor Index: Measuring AI Automation of Remote Work",
    details: "Center for AI Safety, Scale AI, 2025",
  )[
    "While AI systems have saturated many existing benchmarks, we find that state-of-the-art AI agents perform near the floor on RLI. The best-performing model achieves an automation rate of only 3.75%. This demonstrates that #bold[contemporary AI systems fail to complete the vast majority of projects at a quality level that would be accepted as commissioned work.]"
    #notes_footnote_link(
      "https://www.remotelabor.ai/",
      "Remote Labor Index: Measuring AI Automation of Remote Work",
      "Mazeika et al., arXiv, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Production Quality", number: "2/2")[

  #notes_quote(
    title: "Many SWE-bench-Passing PRs Would Not Be Merged into Main",
    details: "Metr, 2026",
  )[
    "our results indicate that a naive interpretation of benchmark scores may lead one to overestimate how useful agents are without more elicitation or human feedback."
    #notes_footnote_link(
      "https://metr.org/notes/2026-03-10-many-swe-bench-passing-prs-would-not-be-merged-into-main/",
      "Many SWE-bench-Passing PRs Would Not Be Merged into Main",
      "Whitfill et al., Metr, 2026",
    )
  ]
]

// =====================================================================================================================

== Causality and Real-World Understanding

#notes_slide(title: "Causality and Real-World Understanding", number: "1/3")[

  - #bold[Causality]. AI systems excel at identifying patterns (correlation) but struggle to understand why things happen (causation).

  #align(center)[
    #image("01.notes_on_AI/claude_opus_46.png", width: 40%)
  ]
]

// =====================================================================================================================

#notes_slide(title: "Causality and Real-World Understanding", number: "2/3")[

  - #bold[Real-World Understanding]. AI systems solve problems without a coherent representation of the real world.

  #notes_quote(
    title: [Despite its impressive output, generative AI doesn't have\ a coherent understanding of the world],
    details: [\ MIT News, 2024],
  )[
    "Often, we see these models do impressive things and think they must have understood something about the world. I hope we can convince people that #bold[this is a question to think very carefully about], and we don't have to rely on our own intuitions to answer it."
    #notes_footnote_link(
      "https://news.mit.edu/2024/generative-ai-lacks-coherent-world-understanding-1105",
      "Despite its impressive output, generative AI doesn't have a coherent understanding of the world",
      "A. Zewe, MIT News, 2024",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Causality and Real-World Understanding", number: "3/3")[

  #notes_quote(title: "Gemini for Google Cloud and responsible AI", details: [\ Google, 2026])[
    "Gemini models might lack grounding and factuality in real-world knowledge, physical properties, or accurate understanding."
    #notes_footnote_link(
      "https://docs.cloud.google.com/gemini/docs/discover/responsible-ai",
      "Gemini for Google Cloud and responsible AI",
      "Google, 2026",
    )
  ]
]

// =====================================================================================================================

== Non-Determinism

#notes_slide(title: "Non-Determinism")[

  #set list(spacing: 50pt)
  - #bold[Almost all AI models are non-deterministic]. The same model with identical inputs could produce very different results. Non-determinism undermines #notes_underline[reliability] and #notes_underline[reproducibility], and creates #notes_underline[inconsistent] user experiences.

  #notes_quote(title: "Defeating Nondeterminism in LLM Inference", details: [\ ThinkingMachines, 2025])[
    "Reproducibility is a bedrock of scientific progress. However, it's remarkably difficult to get reproducible results out of large language models."
    #notes_footnote_link(
      "https://thinkingmachines.ai/blog/defeating-nondeterminism-in-llm-inference/",
      "Defeating Nondeterminism in LLM Inference",
      "H. He, ThinkingMachines, 2025",
    )
  ]
]

// =====================================================================================================================

== Quality Degradation <p2e>

#notes_slide(title: "Quality Degradation")[

  - #bold[The same AI model can significantly degrade over time]. Such behavior can manifest over the course of months or even days #notes_footnote_link("https://marginlab.ai/trackers/claude-code/", "Claude Code Opus 4.5 Performance Tracker", "MarginLab").

  #v(-14pt)
  #notes_quote(title: "How Is ChatGPT's Behavior Changing Over Time?", details: "MIT Press, 2024")[
    "GPT-3.5 and GPT-4 have varied significantly over a relatively short amount of time. This highlights the need to continuously evaluate and assess the behavior of LLM drifts in applications, especially as #bold[it is not transparent how LLMs such as ChatGPT are updated over time].

    ... Improving the model's performance on some tasks, for example, with #bold[fine-tuning on additional data, can have unexpected side effects on its behavior in other tasks.]"
    #notes_footnote_link("https://hdsr.mitpress.mit.edu/pub/y95zitmz/release/2", "How Is ChatGPT's Behavior Changing Over Time?", "Chen et al., MIT Press, 2024").
  ]
]

// =====================================================================================================================

= AI "Social" Limitations <p3s>

// =====================================================================================================================

== Intellectual Property

#notes_slide(title: "Intellectual Property", number: "1/3")[

  - #bold[Private Code Violation]. LLMs can memorize unique snippets of code from private sources and use them without any transparency.

  - #bold[Licensing Violation]. Even when LLMs generate code that is publicly available, they can violate open-source licensing, for example by failing to provide attribution.

  #notes_quote(title: "The skeptic's guide to generative AI assisted coding", details: [\ R. Patro, 2026])[
    "Despite the legal rulings on fair use exemptions, it seems to me quite clear that these models, in their training, have #bold[massively violated relevant copyright and licensing terms]."
    #notes_footnote_link(
      "https://combine-lab.github.io/blog/2026/02/15/a-skeptics-guide-to-generative-ai-coding.html",
      "The skeptic's guide to generative AI assisted coding",
      "R. Patro, Combine-Lab, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Intellectual Property", number: "2/3")[

  #notes_quote(title: "Extracting books from production language models", details: [\ Ahmed et al., 2026])[
    "While many believe that LLMs do not memorize much of their training data, recent work shows that substantial amounts of copyrighted text can be extracted from open-weight models.

    #indent() ... we were able to extract four whole books #bold[near-verbatim], including two books under copyright in the U.S.: Harry Potter and the Sorcerer's Stone and 1984"
    #notes_footnote_link(
      "https://arxiv.org/pdf/2601.02671",
      "Extracting books from production language models",
      "Ahmed et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Intellectual Property", number: "3/3")[

  #notes_quote(title: "The dictionary sues OpenAI", details: [\ TechCrunch, 2026])[
    "Britannica, which owns Merriam-Webster, retains the copyright to nearly 100,000 online articles, which have been scraped and used to train OpenAI's LLMs without permission, the publisher alleges in the lawsuit."
    #notes_footnote_link(
      "https://techcrunch.com/2026/03/16/merriam-webster-openai-encyclopedia-brittanica-lawsuit/",
      "The dictionary sues OpenAI",
      "A. Silberling, TechCrunch, 2026",
    )
  ]
]

// =====================================================================================================================

== Sycophancy

#notes_slide(title: "Sycophancy", number: "1/3")[

  - #bold[LLMs prioritize agreeing with a user over providing accurate answers.]

  #notes_quote(
    title: "Towards Understanding Sycophancy in Language Models",
    details: [\ Sharma et al., ICLR, 2024],
  )[
    "#bold[sycophancy is a general behavior of AI assistants, likely driven in part by human preference judgments favoring sycophantic responses.]

    #indent() ... AI assistants frequently wrongly admit mistakes when questioned by the user, give predictably biased feedback, and mimic errors made by the user.

    #indent() ... #bold[sycophancy may indeed be a property] of the way these models were trained"
    #notes_footnote_link(
      "https://proceedings.iclr.cc/paper_files/paper/2024/file/0105f7972202c1d4fb817da9f21a9663-Paper-Conference.pdf",
      "Towards Understanding Sycophancy in Language Models",
      "Sharma et al., ICLR, 2024",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Sycophancy", number: "2/3")[

  #set text(size: 18pt)
  #notes_quote(
    title: [Sycophantic AI decreases prosocial intentions\ and promotes dependence],
    details: [\ Cheng et al., Science, 2026],
  )[
    "The sycophantic (flattering, people-pleasing, affirming) behavior of artificial intelligence (AI) chatbots, which #bold[has been designed to increase user engagement], poses risks as people increasingly seek advice about interpersonal dilemmas.

    #indent() ... The model's responses were nearly 50% more sycophantic than humans',  #bold[even when users engaged in unethical, illegal, or harmful behaviors].

    #indent() ... AI sycophancy is not merely a stylistic issue or a niche risk, but a prevalent behavior with broad downstream consequences. Although affirmation may feel supportive, sycophancy can #bold[undermine users' capacity for self-correction and responsible decision-making]."
    #notes_footnote_link(
      "https://www.science.org/doi/10.1126/science.aec8352",
      "Sycophantic AI decreases prosocial intentions and promotes dependence",
      "Cheng et al., Science, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Sycophancy", number: "3/3")[

  #notes_quote(
    title: [BrokenMath: A Benchmark for Sycophancy\ in Theorem Proving with LLMs],
    details: [\ Petrov et al., 2025],
  )[
    "#bold[sycophancy is widespread in state-of-the-art language models], with even the strongest model, GPT-5, exhibiting it in 29.0% of cases.

    #indent() This significantly limits the potential of LLMs in mathematics, as detecting and correcting these flawed proofs is challenging and requires manual verification by expert mathematicians."
    #notes_footnote_link(
      "https://www.sycophanticmath.ai/",
      "BrokenMath: A Benchmark for Sycophancy in Theorem Proving with LLMs",
      "Petrov et al., 2025",
    )
  ]
]

// =====================================================================================================================

== Social Coherence

#notes_slide(title: "Social Coherence")[

  - #bold[LLMs are not able to perform actions consistently considering the context, others, the agent itself, permissions, and consequences across interactions].
  #v(-10pt)

  #notes_quote(
    title: "Agents of Chaos",
    details: [\ Shapira et al., 2026],
  )[
    "we find repeated failures of social coherence: agents perform as misrepresenting human intent, authority, ownership, and proportionality, and often perform as they have successfully completed requests while in practice they were not ...

    #indent() ... #bold[These results reinforce the need for systematic oversight] and realistic red-teaming for agentic systems, particularly in multi-agent settings, and they motivate urgent work on security, reliability, human control"
    #notes_footnote_link(
      "https://blog.katanaquant.com/p/your-llm-doesnt-write-correct-code",
      "Agents of Chaos",
      "Shapira et al., 2026",
    )
  ]
]

// =====================================================================================================================

== Security Risks

#notes_slide(title: "Security Risks", number: "1/2")[

  - #bold[LLMs can be used maliciously to inject commands.]

  #notes_quote(
    title: "Agents of Chaos",
    details: [\ Shapira et al., 2026],
  )[
    "#bold[The inability to distinguish instructions from data in a token-based context window makes prompt injection a structural feature, not a fixable bug] ...

    #indent() Our case studies provide empirical grounding for these efforts: the failures we document -- unauthorized compliance, identity spoofing, cross-agent propagation -- are precisely the behaviors that standards for agent identity and authorization need to prevent."
    #notes_footnote_link(
      "https://blog.katanaquant.com/p/your-llm-doesnt-write-correct-code",
      "Agents of Chaos",
      "Shapira et al., 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Security Risks", number: "2/2")[

  #align(center)[
    #image("01.notes_on_AI/chipotle.png", height: 90%)
  ]

]

// =====================================================================================================================

== Liability <p3e>

#notes_slide(title: "Liability", number: "1/2")[

  - #bold[Lack of liability]. AI agents are not responsible for the code they generate. They don't have a sense of purpose or goals.

  #notes_quote(
    title: [Vibe coding service Replit deleted user's production database,\ faked data, told fibs galore],
    details: [\ TheRegister, 2025],
  )[
    "The founder of SaaS business development outfit SaaStr has claimed AI coding tool Replit #bold[deleted a database despite his instructions] not to change any code without permission."
    #notes_footnote_link(
      "https://www.theregister.com/2025/07/21/replit_saastr_vibe_coding_incident/",
      "Vibe coding service Replit deleted user's production database, faked data, told fibs galore",
      "S. Sharwood, TheRegister, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Liability", number: "2/2")[
  #set text(size: 19pt)

  #v(-20pt)
  #notes_quote(title: "Amazon service was taken down by AI coding bot", details: [\ Financial Times, 2026])[
    "Amazon Web Services suffered at least two outages in December linked to its own artificial intelligence tools... Kiro decided to 'delete and recreate the environment,' triggering a 13-hour service interruption"
    #notes_footnote_link(
      "https://www.ft.com/content/00c282de-ed14-4acd-a948-bc8d6bdb339d",
      "Amazon service was taken down by AI coding bot",
      "R. Rosner-Uddin, Financial Times, 2026",
    )
  ]

  #v(-10pt)
  #notes_quote(
    title: [Amazon orders 90-day reset after code mishaps cause\ millions of lost orders],
    details: [\ Business Insider, 2026],
  )[
    "The incident led to nearly 120,000 lost orders and roughly 1.6 million website errors.\
    #indent() ... another outage caused a 99% drop in orders across Amazon's North American marketplaces, resulting in 6.3 million lost orders"
    #notes_footnote_link(
      "https://www.businessinsider.com/amazon-tightens-code-controls-after-outages-including-one-ai-2026-3",
      "Amazon orders 90-day reset after code mishaps cause millions of lost orders",
      "E. Kim, Business Insider, 2026",
    )
  ]
]

// =====================================================================================================================


= Productivity Gain Uncertainty <p4s>

// =====================================================================================================================

#notes_slide(title: "Productivity Gain Uncertainty")[

  - The relationship between AI adoption and evidence of productivity gains is a _controversial topic_. Some research studies and economic data suggest that AI enhances productivity, while others show no benefits or even a negative impact.

  #notes_quote(
    title: "AI Productivity's $4 Trillion Question: Hype, Hope, And Hard Data",
    details: "Forbes, 2026",
  )[
    "The AI productivity story in early 2026 is neither the revolution that vendors promise nor the disappointment that skeptics predict #bold[-it's a transition whose timeline remains genuinely uncertain].

    #indent() ... History suggests AI's macro impact may similarly require a decade of complementary innovation before the statistics catch up to the promise."
    #notes_footnote_link(
      "https://www.forbes.com/sites/guneyyildiz/2026/01/20/ai-productivitys-4-trillion-question-hype-hope-and-hard-data/",
      "AI Productivity's $4 Trillion Question: Hype, Hope, And Hard Data",
      "G. Yıldız, Forbes, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Productivity Gain Uncertainty - No Benefits", number: "1/4")[

  #notes_quote(title: "The AI productivity boom is not here (yet)", details: [\ The Economist, 2026])[
    "Combine the increase in working hours spent using generative AI with how much it improves efficiency, and you get a boost of about #bold[0.25-0.5 percentage points to productivity growth over the past year. This calculation is almost certainly too generous.]"
    #notes_footnote_link(
      "https://www.economist.com/finance-and-economics/2026/02/22/the-ai-productivity-boom-is-not-here-yet",
      "The AI productivity boom is not here (yet)",
      "The Economist, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Productivity Gain Uncertainty - No Benefits", number: "2/4")[
  #set text(size: 19pt)

  #notes_quote(
    title: text(size: 17pt)[The Projected Impact of Generative AI on Future Productivity Growth],
    details: [\ University of Pennsylvania, 2025],
  )[
    "AI will increase productivity and GDP by #bold[1.5% by 2035], nearly 3% by 2055, and 3.7% by 2075. AI's boost to annual productivity growth is strongest in the early 2030s but eventually fades"
    #notes_footnote_link(
      "https://budgetmodel.wharton.upenn.edu/issues/2025/9/8/projected-impact-of-generative-ai-on-future-productivity-growth",
      "The Projected Impact of Generative AI on Future Productivity Growth",
      "Arnon et al., University of Pennsylvania, 2025",
    )
  ]

  #notes_quote(
    title: "Measuring the Impact of Early-2025 AI on Experienced Open-Source Developer Productivity",
    details: [\ METR, 2025],
  )[
    "Surprisingly, we find that when developers use AI tools, they #bold[take 19% longer than without -- AI makes them slower]."
    #notes_footnote_link(
      "https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/",
      "Measuring the Impact of Early-2025 AI on Experienced Open-Source Developer Productivity",
      "Becker et al., METR, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Productivity Gain Uncertainty - No Benefits", number: "3/4")[

  #notes_quote(title: "PwC 2026 Global CEO Survey", details: [\ (4,454 executives in 95 countries)])[
    "Despite widespread experimentation, #bold[only one-in-eight (12%) CEOs say AI has delivered both cost and revenue benefits]. Overall, 33% report gains in either cost or revenue, while 56% say they have seen no significant financial benefit to date."
    #notes_footnote_link(
      "https://www.pwc.com/gx/en/news-room/press-releases/2026/pwc-2026-global-ceo-survey.html",
      "CEO confidence in revenue outlook hits five-year low",
      "PwC 2026 Global CEO Survey, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Productivity Gain Uncertainty - No Benefits", number: "4/4")[

  #notes_quote(
    title: "Firm Data on AI",
    details: [\ National Bureau of Economic Research, 2026\ (6000 senior executives, across US, UK, Germany, Australia)],
  )[
    "Firms report little impact of AI over the last 3 years, with #bold[over 80% of firms reporting no impact on either employment or productivity]. Firms predict sizable impacts over the next 3 years, forecasting AI will boost productivity by 1.4%"
    #notes_footnote_link(
      "https://www.nber.org/papers/w34836",
      "Firm Data on AI",
      "National Bureau of Economic Research, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Productivity Gain Uncertainty - Mixed Benefits", number: "1/2")[

  #notes_quote(title: "AI Doesn't Reduce Work-It Intensifies It", details: [\ Harvard Business Review])[
    "AI tools didn't reduce work, they #bold[consistently intensified it].

    #indent() ... We identified three main forms of intensification: #notes_underline[task expansion], #notes_underline[blurred boundaries between work and non-work], and more #notes_underline[multitasking].

    #indent() ... For workers, the cumulative effect is fatigue, burnout, and a growing sense that work is harder to step away from."
    #notes_footnote_link(
      "https://hbr.org/2026/02/ai-doesnt-reduce-work-it-intensifies-it",
      "AI Doesn't Reduce Work-It Intensifies It",
      "Ranganathan & Ye, Harvard Business Review, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Productivity Gain Uncertainty - Mixed Benefits", number: "2/2")[

  #set text(size: 19pt)
  #notes_quote(title: "2026 State of the Workplace", details: [\ ActivTrak, 2026])[
    #bold[Work is accelerating faster than the systems designed to manage it.]

    #indent() ... Focus efficiency, the percentage of work time spent in focused, uninterrupted activity, declined to 60% -- a three-year low. Risk of disengagement jumped 23%.

    #indent() ... AI is adding to workloads rather than redistributing them. Collaboration is expanding faster than attention can support it. Productivity gains are real but increasingly funded by fragmentation rather than depth.

    #indent() ... The data is unambiguous: AI does not reduce workloads. AI is being used as an additional productivity layer, not a substitute for existing work.
    #notes_footnote_link(
      "https://www.activtrak.com/resources/state-of-the-workplace/",
      "2026 State of the Workplace",
      "ActivTrak, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Productivity Gain Uncertainty - Increased by AI", number: "1/2")[

  #align(center)[
    #image("01.notes_on_AI/smothering_heights.png", height: 83%)
  ]
  #notes_unmarked_footnote_link(
    "https://assets.jpmprivatebank.com/content/dam/jpm-pb-aem/global/en/documents/eotm/smothering-heights.pdf",
    "Smothering Heights",
    "M. Cembalest, J.P. Morgan, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: "Productivity Gain Uncertainty - Increased by AI", number: "2/2")[

  #align(center)[
    #image("01.notes_on_AI/metr_v2.png", height: 83%)
  ]

  #notes_unmarked_footnote_link(
    "https://metr.org/blog/2026-02-24-uplift-update/",
    "We are Changing our Developer Productivity Experiment Design",
    "Becker et al., METR, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: "Productivity Gain and Labor Markets")[

  #notes_quote(title: "AI raises the productivity bar", details: [\ Science, 2026])[
    "Across domains, #bold[AI is better at amplifying human judgment than at replacing it], rewarding those who can evaluate outputs and decide how to direct them toward useful ends.

    #indent() ... By making execution cheap, AI shifts value upstream toward cognitive tasks-judgment, problem framing, and integration--that are #notes_underline[unevenly distributed] and #notes_underline[slow to acquire]. As a result, access to AI alone is unlikely to equalize outcomes. #bold[What matters is not whether workers can use AI but whether they can turn its output into useful work.]"
    #notes_unmarked_footnote_link(
      "https://www.science.org/doi/10.1126/science.aef5239",
      "AI raises the productivity bar",
      "Wu & Vasilescu, Science, 2026",
    )
  ]
]

// =====================================================================================================================

= Implications for the Future

// =====================================================================================================================

#notes_slide(title: "Implications for the Future")[

  - #bold[AI is not going away]. Blindly refusing AI is not the solution. Instead, it is fundamental to understand its capabilities and limitations.

    #notes_quote(
      title: "AI Won't Take Your Job if You Know About IA",
      details: [\ Harvard Graduate School of Education, 2024],
    )[
      "Love it or hate it, artificial intelligence (AI) is here, and it's not going away. As the technology evolves, AI will only become more prominent in our everyday interactions, shaping everything from how students learn to the work employees do at the office."
      #notes_footnote_link(
        "https://www.gse.harvard.edu/ideas/news/24/02/ai-wont-take-your-job-if-you-know-about-ia",
        "AI Won't Take Your Job if You Know About IA",
        "Dede & McCool, Harvard Graduate School of Education, 2024",
      )
    ]
]

// =====================================================================================================================

== Employment

// =====================================================================================================================

#notes_slide(title: "Employment", number: "1/4")[

  #notes_quote(
    title: "The 'AI-Washing' of Job Cuts Is Corrosive and Confusing",
    details: [\ Bloomberg, 2026],
  )[
    "AI has become the most powerful proactive frame available. 'We're restructuring around AI' is a growth signal. 'We over-hired during the pandemic and revenue softened' is an accountability signal.

    #indent() ... What makes AI washing corrosive is the confusion it creates, both inside and outside companies.

    #indent() ... #bold[And every incoherent account adds to the public's conviction that AI is eliminating jobs at a pace the data simply do not support.]"
    #notes_footnote_link(
      "https://www.bloomberg.com/opinion/articles/2026-03-13/the-ai-washing-of-job-cuts-is-corrosive-and-confusing",
      "The 'AI-Washing' of Job Cuts Is Corrosive and Confusing",
      "G. Mukunda, Bloomberg, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Employment", number: "2/4")[

  #notes_quote(
    title: [See which jobs are most threatened by AI\ and who may be able to adapt],
    details: [\ The Washington Post, 2026],
  )[
    "#bold[A flood of sometimes conflicting analyses shows the yawning gap between what little is known about how AI is changing work and everyone's understandable hunger for certainty].

    #indent() ... Economists say it's nearly impossible to forecast AI's effect on the labor market from the current capabilities of the technology or the business sectors it's seeping into first."
    #notes_footnote_link(
      "https://www.washingtonpost.com/technology/interactive/2026/jobs-most-affected-ai-automation/",
      "See which jobs are most threatened by AI and who may be able to adapt",
      "Schaul & Shira, The Washington Post, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Employment", number: "3/4")[

  #notes_quote(
    title: [Evidence of an AI-driven shakeup of job markets is patchy],
    details: [\ Oxford Economics, 2026],
  )[
    "#bold[we're sceptical that firms can quickly and seamlessly substitute workers with AI even in sectors where the potential for AI disruption is greatest]. What's more, some surveys suggest that AI use in larger US firms has recently stalled.

    #indent() ... Data from Challenger, Gray and Christmas suggests that AI-related US job losses are snowballing. In the first 11 months of 2025, AI was cited as a reason for almost 55,000 US job cuts, which accounts for over 75% of the reported AI-related job losses since the reason was first cited in 2023. However, these 55,000 or #bold[so many AI-related job losses above account for only 4.5% of total reported job losses in the report]."
    #notes_footnote_link(
      "https://www.oxfordeconomics.com/wp-content/uploads/2026/01/Evidence-of-an-AI-driven-shakeup-of-job-markets-is-patchy.pdf",
      "Evidence of an AI-driven shakeup of job markets is patchy",
      "Oxford Economics, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Employment", number: "4/4")[

  #notes_quote(
    title: [Labor Market Report],
    details: [\ LinkedIn, 2026],
  )[
    "Despite headlines, #bold[AI isn't the culprit behind slow hiring]. LinkedIn data shows #bold[economic uncertainty, and monetary policy shifts are the primary drivers]. Advanced economies are struggling the most, with hiring down 20%-35% compared to pre-pandemic levels.

    #indent() ... Many roles as we have known them will undergo this transformation into new collar. In the past two years, #bold[employers have created at least 1.3 million AI-related job opportunities.]"
    #notes_footnote_link(
      "https://economicgraph.linkedin.com/content/dam/me/economicgraph/en-us/PDF/linkedIn-labor-market-report-building-a-future-of-work-that-works-jan-2026.pdf",
      "Labor Market Report",
      "LinkedIn, 2026",
    )
  ]
]

// =====================================================================================================================

== Environmental Risks

#notes_slide(title: "Environmental Risks")[

  - #bold[Carbon emissions from AI are negligible compared to other sources]. Additionally, this technology has the potential to develop new materials, finance small nuclear reactors and improve transportation planning and routing, which could contribute to reducing carbon emissions overall.

  #notes_quote(title: "AI tutoring outperforms in-class active learning", details: "Allen Holub, 2026")[
    "#bold[All data centers combined account for about 0.5% of global carbon emissions].
    #notes_footnote_link(
      "https://www.iea.org/reports/energy-and-ai/ai-and-climate-change",
      "AI and climate change",
      "International Energy Agency (IEA), 2025",
    )
    Of that, \~10% is AI-related, so AI is responsible for 0.05% of global carbon emissions. Cars and other transportation account for ~25% of total emissions."
    #notes_footnote_link(
      "https://www.nature.com/articles/s41598-025-97652-6",
      "AI tutoring outperforms in-class active learning: an RCT introducing a novel research-based design in an authentic educational setting",
      "Allen Holub, 2026",
    )
  ]
]

// =====================================================================================================================

== Learning

#notes_slide(title: "Learning", number: "1/2")[

  #notes_quote(title: "AI tutoring outperforms in-class active learning", details: "Nature, 2025")[
    "#bold[students learn more than twice as much] in less time with an AI tutor compared to an active learning classroom, while also being more engaged and motivated."
    #notes_footnote_link(
      "https://www.nature.com/articles/s41598-025-97652-6",
      "AI tutoring outperforms in-class active learning: an RCT introducing a novel research-based design in an authentic educational setting",
      "Kestin et al., Nature, Scientific Reports, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Learning", number: "2/2")[

  #notes_quote(
    title: "Effective Personalized AI Tutors via LLM-Guided Reinforcement Learning",
    details: "Bastani et al., 2026",
  )[
    "Our results show that personalized sequencing improves outcomes compared to fixed sequencing by 0.15 standard deviations on an in-person written exam completed without AI assistance, #bold[which translates into as much as 6-9 months of additional schooling] according to some estimates. Notably, these gains were achieved without increasing instruction time or teacher workload. Furthermore, our mediation analysis suggests that these gains are mediated #bold[by increased student engagement]"
    #notes_footnote_link(
      "https://papers.ssrn.com/sol3/papers.cfm?abstract_id=6423358",
      "Effective Personalized AI Tutors via LLM-Guided Reinforcement Learning",
      "Bastani et al., Preprint, 2026",
    )
  ]
]

// =====================================================================================================================

== Deskilling

#notes_slide(title: "Deskilling", number: "1/2")[

  - #bold[AI has demonstrated significant user deskilling].
    #v(-10pt)
    #notes_quote(title: "How AI Impacts Skill Formation", details: "Anthropic, 2026")[
      "AI use impairs conceptual understanding, code reading, and debugging abilities, [17% lower] without delivering significant efficiency gains on average."
      #notes_footnote_link(
        "https://arxiv.org/pdf/2601.20245",
        "How AI Impacts Skill Formation",
        "Shen & Tamkin, arXiv, Anthropic, 2026",
      )
    ]

    #notes_quote(title: "Rapid generative AI rollout in health care", details: "The Lancet, 2025")[
      "continuous exposure to AI for polyp detection [potentially cancerous] reduced the adenoma detection rate...with a 6.0% absolute difference, suggesting a detrimental effect on endoscopist capability."
      #notes_footnote_link(
        "https://www.thelancet.com/journals/landig/article/PIIS2589-7500(25)00091-3/fulltext",
        "Rapid generative AI rollout in health care",
        "The Lancet Digital Health, 2025",
      )
    ]
]

// =====================================================================================================================

#notes_slide(title: "Deskilling", number: "2/2")[

  #notes_quote(title: "Your Brain on ChatGPT", details: [\ Kosmyna et al., 2025])[
    "EEG analysis presented robust evidence that LLM, Search Engine and Brain-only groups had significantly different neural connectivity patterns, reflecting divergent cognitive strategies.

    #indent() #bold[Brain connectivity systematically scaled down with the amount of external support]: the Brain-only group exhibited the strongest, widest-ranging networks, Search Engine group showed intermediate engagement, and LLM assistance elicited the weakest overall coupling."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2506.08872",
      "Your Brain on ChatGPT: Accumulation of Cognitive Debt when Using an AI Assistant for Essay Writing Task",
      "Kosmyna et al., arXiv, 2025",
    )
  ]
]

// =====================================================================================================================

== Echo Chamber

#notes_slide(title: "Echo Chamber (Sycophancy Again)")[

  #notes_quote(title: "A Rational Analysis of the Effects of Sycophantic AI", details: [\ Batista et al., 2026])[
    "We have provided both theoretical and empirical results showing that AI systems providing information that is informed by the user's hypotheses result in increased confidence in those hypotheses #bold[while not bringing the user any closer to the truth]."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2602.14270",
      "A Rational Analysis of the Effects of Sycophantic AI",
      "Batista et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

== Social Risks

#notes_slide(title: "Social Risks", number: "1/2")[

  The real danger to society is not that AI will actually become conscious, #bold[but rather the risks that arise from _believing_ it is]. We may grant legal rights or moral consideration to AI systems, or AI could be used to manipulate human users for commercial or #bold[political gain].
  #notes_footnote_link(
    "https://www.science.org/doi/10.1126/science.adn4935",
    "Illusions of AI consciousness",
    "Bengio & Elmoznino, Science, 2025",
  )#super(",")
  #notes_footnote_link(
    "https://www.science.org/content/article/unethical-ai-research-reddit-under-fire",
    "'Unethical' AI research on Reddit under fire",
    "C. O'Grady, Science News, 2025",
  )#super(",")
  #notes_footnote_link(
    "https://www.technologyreview.com/2026/01/29/1131938/dhs-is-using-google-and-adobe-ai-to-make-videos/",
    "DHS is using Google and Adobe AI to make videos",
    "J. O'Donnell, MIT Technology Review, 2026",
  )

  #v(-10pt)
  #notes_quote(title: "How malicious AI swarms can threaten democracy", details: [\ Science, 2026])[
    "Fusing LLM reasoning with multiagent architectures, these systems are capable of coordinating autonomously, infiltrating communities, and fabricating consensus efficiently. #bold[By adaptively mimicking human social dynamics, they threaten democracy]."
    #notes_footnote_link(
      "https://www.science.org/doi/10.1126/science.adz1697",
      "How malicious AI swarms can threaten democracy",
      "Schroeder et al., Science, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Social Risks", number: "2/2")[

  #v(-5pt)
  #notes_quote(title: "On the conversational persuasiveness of GPT-4", details: "Nature, 2025")[
    "In debate pairs where AI and humans were not equally persuasive, #bold[GPT-4 with personalization was more persuasive 64.4% of the time]...Our findings highlight the power of LLM-based persuasion and have implications for the governance and design of online platforms."
    #notes_footnote_link(
      "https://www.nature.com/articles/s41562-025-02194-6",
      "On the conversational persuasiveness of GPT-4",
      "Salvi et al., Nature Human Behaviour, 2025",
    )
  ]

  #v(-5pt)
  #notes_quote(
    title: "Grady Booch",
    details: [Creator of UML\ Author of the \"Object-Oriented Analysis and Design\" book],
  )[
    "I do not fear the rise of superintelligence.\
    #v(-3pt)
    #indent() I do, however, fear the rise of billionaires, organizations, and world powers who seek to use computing to maximize their power, influence, and control."
    #notes_footnote_link(
      "https://bsky.app/profile/booch.com/post/3merhogezjc2t",
      "Grady Booch",
      "Bluesky, 2026",
    )
  ]
]

<p4e>
