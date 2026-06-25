#import "config.typ": *

#show: notes-theme.with(title: [Implications for the Future], subtitle: [Growth, Productivity, and Employment])

// =====================================================================================================================

#title-slide()

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Implications for the Future] <touying:hidden>

#show outline.entry.where(level: 1): set block(above: 50pt)
#outline(target: selector(heading).after(<p1s>).before(<p1e>), title: none)

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Implications for the Future] <touying:hidden>

#show outline.entry.where(level: 1): set block(above: 50pt)
#outline(target: selector(heading).after(<p2s>).before(<p2e>), title: none)

// =====================================================================================================================

= Introduction <p1s>

// =====================================================================================================================

#notes_slide(title: [AI Is Not Going Away #news-tag()])[

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

= Unlikely Exponential Growth

// =====================================================================================================================

== Hardware

#notes_slide(title: [Hardware #science-tag()], group: "hardware")[

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

#notes_slide(title: [Hardware #science-tag()], group: "hardware")[

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
]

// =====================================================================================================================
== Energy Consumption

#notes_slide(title: [Energy Consumption #science-tag()], group: "energy-consumption")[

  - #bold[Datacenters require 24/7 energy]. Solar and wind energy are not suitable for this purpose. On average, a nuclear power plant takes about #notes_underline[9.4 years] to build, with an additional #notes_underline[3-4 years] for the licensing process. #notes_footnote_link(
      "https://visualizingenergy.org/global-nuclear-reactor-construction-starts-and-duration-1949-2023/",
      "Global nuclear reactor construction starts and duration, 1949-2023",
      "Cleveland & Mirkova, Boston University, 2024",
    )
]

// =====================================================================================================================

#notes_slide(title: [Energy Consumption #science-tag()], group: "energy-consumption")[

  #set text(size: 18pt)
  #v(-30pt)
  #quote()[
    #indent() #emph["#bold[The data center share of U.S. total electricity demand in 2030 ranges from 9% to 17%, an increase from 4-5% today]. At the state level, continued development of the largest DC market in Virginia implies a share increasing to between 39% and 57% by 2030."]
  ]

  #v(-10pt)
  #align(center)[
    #image("03.Implications_for_the_Future_part1/datacenter_energy.png", width: 60%)
  ]

  #v(-50pt)
  #notes_unmarked_footnote_link(
    "https://powering-intelligence.epri.com/executive-summary.html",
    "Powering Intelligence 2026",
    "EPRI, 2026",
  )
]

// =====================================================================================================================

== Training Data

#notes_slide(title: [Training Data #science-tag()], group: "training-data")[

  #set list(spacing: 40pt)
  - #bold[Running out of data]. AI training will exhaust text data in a short timeframe.

  #notes_quote(
    title: text(size: 17pt)[The Projected Impact of Generative AI on Future Productivity Growth],
    details: [\ University of Pennsylvania, 2025],
  )[
    "if rapid growth in dataset sizes continues, #bold[models will utilize the full supply of public human text data at some point between 2026 and 2032], or one or two years earlier if frontier models are overtrained. At this point, the availability of public human text data may become a limiting factor in further scaling of language models."
    #notes_footnote_link(
      "https://epoch.ai/blog/will-we-run-out-of-data-limits-of-llm-scaling-based-on-human-generated-data",
      "Will we run out of data? Limits of LLM scaling based on human-generated data",
      "Villalobos et al., EpochAI, 2024",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Training Data #science-tag()], group: "training-data")[

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

  #notes_quote(
    title: "The Impact of AI-Generated Text on the Internet",
    details: [\ Dolezal et al., 2026],
  )[
    "The 35% prevalence of AI-generated and AI-assisted text transforms the theoretical risk of model collapse, wherein future AI models degrade after recursively ingesting AI-generated data, into an empirical concern"
    #notes_footnote_link(
      "https://ai-on-the-internet.github.io/ai-on-the-internet.pdf",
      "The Impact of AI-Generated Text on the Internet",
      "Dolezal et al., 2026",
    ) <dolezal>
  ]
]

// =====================================================================================================================

== Public Opposition

#notes_slide(title: [Public Opposition #news-tag()], group: "public-opposition")[

  - #bold[AI and data centers are facing increasing public opposition].

  #notes_quote(
    title: "Data Center Watch",
    details: [2026],
  )[
    "Q1 2026 produced the largest single-quarter concentration of blocked and delayed data center projects on record, with #bold[at least 75 projects worth approximately \$130 billiondisrupted by local opposition] . The quarter reflected a structural shift rather than a cyclical spike"
    #notes_footnote_link(
      "https://www.datacenterwatch.org/",
      "Data Center Watch",
      "2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Public Opposition #news-tag()], group: "public-opposition")[

  #notes_quote(
    title: "Data centers become the face of AI backlash",
    details: [\ Axios, 2026],
  )[
    "The public is still divided on data centers, with direct opposition not yet a majority view. But #bold[nearly half of respondents support a temporary construction ban].

    #indent() ... 49% say they support a moratorium on construction of new data centers, while only 16% oppose a moratorium."
    #notes_footnote_link(
      "https://www.axios.com/2026/06/22/ai-data-center-backlash-poll",
      "Data centers become the face of AI backlash",
      "Axios, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Public Opposition #news-tag()], group: "public-opposition")[

  #v(-20pt)
  #align(center)[
    #image("03.Implications_for_the_Future_part1/public_opinion.png", height: 94%)
  ]
  #v(-20pt)
  #notes_unmarked_footnote_link(
    "https://www.glassdoor.com/blog/worklife-trends-2026-midyear-check-in/#trend-4-ai-isnt-bringing-employees-downyet",
    "Glassdoor Worklife Trends 2026: Midyear Check-in",
    "Glassdoor, June 2026",
  )
]

// =====================================================================================================================


= Productivity Gain Uncertainty <p1e>

// =====================================================================================================================

#notes_slide(title: [Productivity Gain Uncertainty #news-tag()])[

  - The relationship between AI adoption and evidence of productivity gains is a _controversial topic_. Some research studies and economic data suggest that AI enhances productivity, while others show no benefits or even a negative impact.

  #notes_quote(
    title: "AI Productivity's $4 Trillion Question: Hype, Hope, And Hard Data",
    details: [\ Forbes, 2026],
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

#notes_slide(title: [Productivity Gain Uncertainty - No Benefits #news-tag()], group: "productivity-no-benefits")[

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

#notes_slide(title: [Productivity Gain Uncertainty - No Benefits #science-tag()], group: "productivity-no-benefits")[
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

#notes_slide(title: [Productivity Gain Uncertainty - No Benefits #science-tag()], group: "productivity-no-benefits")[

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

#notes_slide(title: [Productivity Gain Uncertainty - No Benefits #science-tag()], group: "productivity-no-benefits")[

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

#notes_slide(title: [Productivity Gain Uncertainty - No Benefits #science-tag()], group: "productivity-no-benefits")[

  #notes_quote(
    title: "The efficiency-gain illusion: People underestimate the rate of AI use and overestimate its benefits on simple tasks",
    details: [\ Yu et al., 2026],
  )[
    "#bold[AI assistance may not actually provide the time and effort savings on simple tasks that people expect].

    #indent() ... Our findings point to risks of a feedback loop of reliance where people habituate to using AI even when doing so does not save time or effort.

    #indent() ... The finding is particularly alarming because an excessive amount of offloading to AI has been linked to cognitive deskilling, overreliance, and disempowerment"
    #notes_footnote_link(
      "https://arxiv.org/pdf/2605.22687",
      "The efficiency-gain illusion: People underestimate the rate of AI use and overestimate its benefits on simple tasks",
      "Yu et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Productivity Gain Uncertainty - Mixed Benefits #news-tag()], group: "productivity-mixed")[

  #notes_quote(title: "Navigating the Jagged Technological Frontier", details: [\ Harvard Business School])[
    "Across 18 realistic business tasks --- ranging from creative to analytical tasks --- #bold[AI significantly improved performance and quality] for every model specification, increasing speed by more than 25%, performance by more than 30%, and task completion by more than 12%. #bold[However, for a task outside the frontier, subjects using AI were 19 percentage points less likely to produce correct solutions.]"
    #notes_footnote_link(
      "https://hbr.org/2026/02/ai-doesnt-reduce-work-it-intensifies-it",
      "Navigating the Jagged Technological Frontier: Field Experimental Evidence of the Effects of Artificial Intelligence on Knowledge Worker Productivity and Quality",
      "Dell'Acqua et al., Harvard Business School, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Productivity Gain Uncertainty - Mixed Benefits #news-tag()], group: "productivity-mixed")[

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

#notes_slide(title: [Productivity Gain Uncertainty - Mixed Benefits #science-tag()], group: "productivity-mixed")[

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

#notes_slide(title: [Productivity Gain Uncertainty - Mixed Benefits #science-tag()], group: "productivity-mixed")[

  #align(center)[
    #image("03.Implications_for_the_Future_part1/ai_saving_time.png", height: 70%)
  ]

  #notes_unmarked_footnote_link(
    "https://www.wsj.com/lifestyle/workplace/ceos-say-ai-is-making-work-more-efficient-employees-tell-a-different-story-6613ce9d",
    "CEOs Say AI Is Making Work More Efficient. Employees Tell a Different Story",
    "L. Ellis, The Wall Street Journal, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [Productivity Gain Uncertainty - Increased by AI #science-tag()], group: "productivity-increased")[

  #align(center)[
    #image("03.Implications_for_the_Future_part1/smothering_heights.png", height: 83%)
  ]
  #notes_unmarked_footnote_link(
    "https://assets.jpmprivatebank.com/content/dam/jpm-pb-aem/global/en/documents/eotm/smothering-heights.pdf",
    "Smothering Heights",
    "M. Cembalest, J.P. Morgan, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [Productivity Gain Uncertainty - Increased by AI #science-tag()], group: "productivity-increased")[

  #align(center)[
    #image("03.Implications_for_the_Future_part1/metr_v2.png", height: 83%)
  ]

  #notes_unmarked_footnote_link(
    "https://metr.org/blog/2026-02-24-uplift-update/",
    "We are Changing our Developer Productivity Experiment Design",
    "Becker et al., METR, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [Productivity Gain Uncertainty - Increased by AI #science-tag()], group: "productivity-increased")[

  #notes_quote(
    title: "Mapping AI into Production: A Field Experiment on Firm Performance",
    details: [\ The Business School of the World, 2026],
  )[
    Across 515 high-growth startups, we run a field experiment in which treated firms receive information about how other firms have reorganized production around AI, prompting them to search for use cases across a broader set of firm functions. We find that treated firms discover more AI use cases, a 44% increase, concentrated in product development and strategy.
    These changes result in economically meaningful performance gains. #bold[Treated firms complete 12% more tasks,
      are 18% more likely to acquire paying customers, and generate 1.9x higher revenue.]
    #notes_footnote_link(
      "https://papers.ssrn.com/sol3/papers.cfm?abstract_id=6513481",
      "Mapping AI into Production: A Field Experiment on Firm Performance",
      "Kim et al., The Business School of the World, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Productivity Gain Uncertainty - Increased by AI #science-tag()], group: "productivity-increased")[

  #v(-40pt)
  #align(center)[
    #image("03.Implications_for_the_Future_part1/apollo.png", height: 95%)
  ]

  #v(-10pt)
  #notes_unmarked_footnote_link(
    "https://www.apollo.com/wealth/the-daily-spark/the-ai-revolution-continues",
    "The AI Revolution Continues",
    "T. Slok, Apollo Global Management, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [Productivity Gain Uncertainty - Increased by AI #science-tag()], group: "productivity-increased")[

  #v(-35pt)
  #align(center)[
    #image("03.Implications_for_the_Future_part1/epochai_tasks.png", height: 95%)
  ]

  #v(-20pt)
  #notes_unmarked_footnote_link(
    "https://epochai.substack.com/p/ai-is-a-common-workplace-tool-half",
    "Half of employed Al users now use it for work",
    "E. & C. Falkman Olsson, Epoch AI, 2026",
  )
]

// =====================================================================================================================

= Employment <p2s>

// =====================================================================================================================

== Employment Data

// =====================================================================================================================

#notes_slide(title: [Employment Data #news-tag()], group: "employment-data")[

  #notes_quote(
    title: "The 'AI-Washing' of Job Cuts Is Corrosive and Confusing",
    details: [\ Bloomberg, March 2026],
  )[
    "#bold[AI has become the most powerful proactive frame available]. 'We're restructuring around AI' is a growth signal. 'We over-hired during the pandemic and revenue softened' is an accountability signal.

    #indent() ... What makes AI washing corrosive is the confusion it creates, both inside and outside companies.

    #indent() ... #bold[And every incoherent account adds to the public's conviction that AI is eliminating jobs at a pace the data simply do not support.]"
    #notes_footnote_link(
      "https://www.bloomberg.com/opinion/articles/2026-03-13/the-ai-washing-of-job-cuts-is-corrosive-and-confusing",
      "The 'AI-Washing' of Job Cuts Is Corrosive and Confusing",
      "G. Mukunda, Bloomberg, March 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment Data #news-tag()], group: "employment-data")[

  #notes_quote(
    title: [See which jobs are most threatened by AI\ and who may be able to adapt],
    details: [\ The Washington Post, March 2026],
  )[
    "#bold[A flood of sometimes conflicting analyses shows the yawning gap between what little is known about how AI is changing work and everyone's understandable hunger for certainty].

    #indent() ... Economists say it's nearly impossible to forecast AI's effect on the labor market from the current capabilities of the technology or the business sectors it's seeping into first."
    #notes_footnote_link(
      "https://www.washingtonpost.com/technology/interactive/2026/jobs-most-affected-ai-automation/",
      "See which jobs are most threatened by AI and who may be able to adapt",
      "Schaul & Shira, The Washington Post, March 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment Data #news-tag()], group: "employment-data")[

  #notes_quote(
    title: [Myths About Generative AI, Productivity, and Job Displacement],
    details: [\ Luddite Lab Resource Hub, May 2026],
  )[
    "#bold[claims around productivity and labor displacement are massively overblown]. Part of this is due to massive industry hype --- AI investment crested \$73.1 billion in the first quarter of 2025, making up nearly 58% of global venture capital.

    #indent() ... hype is also reinforced by speculative research methods of estimating job replacement and misattributing the cause of recent layoffs to actual gains in productivity due to automation facilitated by generative AI tools."
    #notes_footnote_link(
      "https://cdn.sanity.io/files/uvgbyd32/production/45f1b26939d3502b2189c3839cfd352703ff5283.pdf",
      "Myths About Generative AI, Productivity, and Job Displacement",
      "Hanna et al., Luddite Lab Resource Hub, May 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment Data #science-tag()], group: "employment-data")[

  #notes_quote(
    title: [Evidence of an AI-driven shakeup of job markets is patchy],
    details: [\ Oxford Economics, January 2026],
  )[
    "#bold[we're sceptical that firms can quickly and seamlessly substitute workers with AI even in sectors where the potential for AI disruption is greatest]. What's more, some surveys suggest that AI use in larger US firms has recently stalled.

    #indent() ... Data from Challenger, Gray and Christmas suggests that AI-related US job losses are snowballing. In the first 11 months of 2025, AI was cited as a reason for almost 55,000 US job cuts, which accounts for over 75% of the reported AI-related job losses since the reason was first cited in 2023. However, these 55,000 or #bold[so many AI-related job losses above account for only 4.5% of total reported job losses in the report]."
    #notes_footnote_link(
      "https://www.oxfordeconomics.com/wp-content/uploads/2026/01/Evidence-of-an-AI-driven-shakeup-of-job-markets-is-patchy.pdf",
      "Evidence of an AI-driven shakeup of job markets is patchy",
      "Oxford Economics, January 2026",
    )
  ]

]

// =====================================================================================================================

#notes_slide(title: [Employment Data #news-tag()], group: "employment-data")[

  #v(-20pt)
  #align(center)[
    #image("03.Implications_for_the_Future_part1/ai_jobs.png", height: 92%)
  ]
  #v(-30pt)

  #notes_unmarked_footnote_link(
    "https://www.technologyreview.com/2026/05/26/1137855/a-reality-check-on-the-ai-jobs-hysteria/",
    "A reality check on the AI jobs hysteria",
    "D. Rotman, MIT Technology Review, April 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [Employment Data #science-tag()], group: "employment-data")[

  #notes_quote(
    title: [Labor Market Report],
    details: [\ LinkedIn, January 2026],
  )[
    "Despite headlines, #bold[AI isn't the culprit behind slow hiring]. LinkedIn data shows #bold[economic uncertainty, and monetary policy shifts are the primary drivers]. Advanced economies are struggling the most, with hiring down 20%-35% compared to pre-pandemic levels.

    #indent() ... Many roles as we have known them will undergo this transformation into new collar. In the past two years, #bold[employers have created at least 1.3 million AI-related job opportunities.]"
    #notes_footnote_link(
      "https://economicgraph.linkedin.com/content/dam/me/economicgraph/en-us/PDF/linkedIn-labor-market-report-building-a-future-of-work-that-works-jan-2026.pdf",
      "Labor Market Report",
      "LinkedIn, January 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment Data #science-tag()], group: "employment-data")[

  #notes_quote(
    title: [FEDS Notes],
    details: [\ Board of Governors of the Federal Reserve System, March 2026],
  )[
    "We find that thus far, #bold[there is no evidence of a reduction in job postings for industries or firms which have higher levels of AI adoption]. The overall slowdown in national job postings following the pandemic recovery does not appear to be driven (even modestly) by AI."
    #notes_footnote_link(
      "https://www.federalreserve.gov/econres/notes/feds-notes/ai-adoption-and-firms-job-posting-behavior-20260327.html",
      "FEDS Notes",
      "Board of Governors of the Federal Reserve System, March 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment Data #science-tag()], group: "employment-data")[

  #v(-30pt)
  #notes_quote(
    title: [FEDS Notes],
    details: [\ Board of Governors of the Federal Reserve System, March 2026],
  )[
    "Job postings are drawn from the Lightcast (formerly Burning Glass) database, which catalogues job postings from more than 65,000 sources

    #indent() ... Despite the recent boom in AI investment across the economy and fears that the technology will lead to widespread job losses, #bold[we find no evidence of negative impacts thus far on firms' job-posting behavior]."
    #notes_unmarked_footnote_link(
      "https://www.census.gov/library/working-papers/2026/adrm/CES-WP-26-25.html",
      "FEDS Notes",
      "Board of Governors of the Federal Reserve System, March 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment Data #science-tag()], group: "employment-data")[

  #v(-20pt)
  #align(center)[
    #image("03.Implications_for_the_Future_part1/employment_by_industry.png", height: 92%)
  ]
  #v(-30pt)

  #notes_unmarked_footnote_link(
    "https://bsky.app/profile/bencasselman.bsky.social/post/3mizcjhxd4k22",
    "Employment by Industry",
    "B. Casselman, Chief Economics Correspondent for The New York Times, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [Employment Data #science-tag()], group: "employment-data")[

  #notes_quote(
    title: [Evaluating the Impact of AI on the Labor Market: Current State of Affairs],
    details: [\ Budgetlab, Yale University, 2025],
  )[
    "While anxiety over the effects of AI on today's labor market is widespread, our data suggests it remains largely speculative. The picture of AI's impact on the labor market that emerges from our data is one that #bold[largely reflects stability, not major disruption at an economy-wide level]."
    #notes_footnote_link(
      "https://budgetlab.yale.edu/research/evaluating-impact-ai-labor-market-current-state-affairs",
      "Evaluating the Impact of AI on the Labor Market: Current State of Affairs",
      "Gimbel et al., Budgetlab, Yale University, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment Data #science-tag()], group: "employment-data")[

  #notes_quote(
    title: [Apocalypse No],
    details: [\ S. Galloway, 2026],
  )[
    "#bold[Every generation gets its 'machines will take your job' panic]. This one just comes with better public relations and a bigger balance sheet. The AI job apocalypse isn't data-driven --- it's narrative-driven, engineered by people who profit when you're scared. #bold[Fear is the product. Capital is the outcome.]"
    #notes_footnote_link(
      "https://www.profgmedia.com/p/apocalypse-no",
      "Apocalypse No",
      "S. Galloway, 2026",
    ) <galloway_2026>
  ]
]

// =====================================================================================================================

== Employment and Early Career Jobs

// =====================================================================================================================

#notes_slide(title: [Employment and Early Career Jobs #science-tag()], group: "employment-early-career-jobs")[

  #notes_quote(
    title: [AI and Young-adult Jobs: The Real Mystery],
    details: [\ Economic Innovation Group, 2026],
  )[
    "Young workers of all education levels are lagging the rest of the labor market. #bold[Focusing too much on education rather than age as the main labor market weakness starts us in the wrong direction].

    #indent() So is AI nonetheless to blame for the broad-based weakness in the labor market for young people? It's true that some lower-skilled jobs can be replaced by AI. Call center workers and data entry jobs are potential examples. But there are not enough of these jobs to really drive the youth labor market."
    #notes_footnote_link(
      "https://agglomerations.eig.org/p/ai-and-young-adult-jobs-the-real?publication_id=2739407&post_id=190033461&isFreemail=true&r=2mn9q2&triedRedirect=true",
      "AI and Young-adult Jobs: The Real Mystery",
      "Ozimek & Goldschlag, Economic Innovation Group, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment and Early Career Jobs #science-tag()], group: "employment-early-career-jobs")[

  #align(center)[
    #image("03.Implications_for_the_Future_part1/graduate_employment.png", height: 83%)
  ]

  #notes_unmarked_footnote_link(
    "https://www.employamerica.org/labor-market-analysis/dont-blame-ai-for-the-rise-in-recent-graduate-unemployment/",
    "Don't Blame AI For The Rise in Recent Graduate Unemployment",
    "W. Raderman, Employ America, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [Employment and Early Career Jobs #science-tag()], group: "employment-early-career-jobs")[

  #notes_quote(
    title: "The Broken Ladder: AI, Remote Work, and Early-Career Hiring",
    details: [\ Harvard Business Review],
  )[
    "#bold[Demand for junior talent appears to have fallen in the post-pandemic era]. This paper tests two possible explanations for this shift: the impact of generative AI tools in the workplace, and the rapid and persistent adoption of work-from-home (WFH) arrangements.

    #indent() ... #bold[Our findings point strongly towards WFH exposure as a better predictor of the
      decline in relative early-career hiring]."
    #notes_footnote_link(
      "https://papers.ssrn.com/sol3/papers.cfm?abstract_id=6787638",
      "The Broken Ladder: AI, Remote Work, and Early-Career Hiring",
      "Lambert & Schindler, London School of Economics & University of Warwick, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment and Early Career Jobs #science-tag()], group: "employment-early-career-jobs")[

  #notes_quote(
    title: "What AI Can't - or Shouldn't - Do for You",
    details: [\ WSJ, 2026],
  )[
    "#bold[Companies that are too quick to lay off workers on the assumption that AI can do their jobs risk wrecking their future competitiveness in two ways]. The first is that they can lose critical institutional knowledge. The second is that they risk hurting their own talent pipelines. While it may be tempting to replace junior engineers with AI, doing so means that when senior engineers move on, a company will no longer have the humans required to review the work of those AIs."
    #notes_footnote_link(
      "https://www.wsj.com/tech/ai/when-ai-more-harm-than-good-519a83e7",
      "What AI Can’t—or Shouldn’t—Do for You",
      "C. Mims, WSJ, 2026",
    )
  ]
]

// =====================================================================================================================

== Employment Predictions

// =====================================================================================================================

#notes_slide(title: [Employment Predictions #science-tag()], group: "employment-predictions")[

  #v(-20pt)
  #align(center)[
    #image("03.Implications_for_the_Future_part1/ai-displacement-risk.png", height: 91%)
  ]
  #v(-30pt)

  #notes_unmarked_footnote_link(
    "https://www.cbre.com/insights/reports/ais-impact-on-the-economy-employment-and-productivity",
    "AI's Impact on the Economy, Employment & Productivity",
    "CBRE, 2026",
  ) <cbre>
]

// =====================================================================================================================

#notes_slide(title: [Employment Predictions #science-tag()], group: "employment-predictions")[

  #set text(size: 18pt)
  #v(-10pt)
  #notes_quote(
    title: [Crashing Waves vs. Rising Tides: Preliminary Findings on AI Automation from Thousands of Worker Evaluations of Labor Market Tasks],
    details: [\ Economic Innovation Group, 2026],
  )[
    "the association between LLM performance and task duration is well approximated by a relatively flat, near-linear relationship rather than a steep, wave-like pattern.

    #indent() ... the success rates achieved by LLMs in this analysis should not be interpreted as implying that a corresponding share of tasks can (or should) be automated today

    #indent() ... #bold[the loss of individual tasks does not necessarily hurt the employees]. Indeed, based on the expertise of task and how that relates to the occupation's bundle of tasks, automation could increase or decrease wages.

    #indent() ... In particular, #bold[we require each task instance to be self-contained], with all relevant information provided in the prompt. This constraint limits our ability to represent tasks that depend on interaction with external artifacts"
    #notes_unmarked_footnote_link(
      "https://arxiv.org/html/2604.01363v1",
      "Crashing Waves vs. Rising Tides: Preliminary Findings on AI Automation from Thousands of Worker Evaluations of Labor Market Tasks",
      "Mertens et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

== Employment and Productivity

// =====================================================================================================================

#notes_slide(title: [Employment and Productivity #science-tag()], group: "employment-productivity")[

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

#notes_slide(title: [Employment and Productivity #science-tag()], group: "employment-productivity")[

  #v(-30pt)
  #notes_quote(
    title: [The Microstructure of AI Diffusion],
    details: [\ U.S. Census Bureau's Business Trends and Outlook Survey (BTOS),\ 1.2 million businesses firms, April 2026],
  )[
    - "#bold[Labor impacts are dominated by augmentation rather than substitution]. Among firms shifting   task structures, 66% engage exclusively in augmentation.

    - Functional integration and operational investments are positively associated with sales increases, performance, and headcount declines. Conversely, worker-task breadth is positively associated with enhanced performance/sales, but not with displacing labor."  #notes_footnote_link(
        "https://www.census.gov/library/working-papers/2026/adrm/CES-WP-26-25.html",
        "The Microstructure of AI Diffusion: Evidence from Firms, Business Functions, and Worker Tasks",
        "Boney et al., U.S. Census Bureau, April 2026",
      )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment and Productivity #science-tag()], group: "employment-productivity")[

  #notes_quote(
    title: [Mind the Gap: AI Adoption in Europe and the U.S.],
    details: [\ National Bureau of Economic Research, 2026],
  )[
    "Micro-level evidence suggests that AI generates #bold[meaningful time savings] for many workers. At the macro level, in recent years industries with higher AI adoption rates have #bold[experienced faster productivity growth]. While we do not establish causality, this relationship is statistically significant and similar in magnitude in Europe and the US."
    #notes_footnote_link(
      "https://www.nber.org/papers/w34995",
      "Mind the Gap: AI Adoption in Europe and the U.S.",
      "National Bureau of Economic Research, 2026",
    )
  ]
]

// =====================================================================================================================

== Economic Impact

#notes_slide(title: [Economic Impact #science-tag()], group: "economic-impact")[

  #notes_quote(
    title: [AI's Impact on the Economy, Employment & Productivity],
    details: [\ CBRE, 2026],
  )[
    "AI investment is rewriting the economic playbook in real time. Hyperscalers are projected to spend #bold[\$3.7 trillion on AI infrastructure over the next five years] --- a buildout that experts estimate #bold[will eclipse the railroad expansion of the 1850s] in relative scale. 2025 AI investment was equivalent to roughly half of U.S. GDP growth for the year."
    @cbre
  ]
]

// =====================================================================================================================

#notes_slide(title: [Economic Impact #science-tag()], group: "economic-impact")[

  #notes_quote(
    title: [AI Set to be Largest CapEx Cycle Ever ...\ and Soon Majority Externally Financed],
    details: [\ Paul Kedrosky, 2026],
  )[
    "Hyperscaler and data-center investment, negligible through 2022, is now tracking toward \$1.5 trillion annually by 2030. At that level, #bold[it will surpass, in real terms, the residential construction boom of 2005-06, the 1990s fiber build peak year, and the 1882 railroad peak #notes_underline[combined]]."
    #notes_footnote_link(
      "https://paulkedrosky.com/ai-set-to-be-largest-capex-cycle-ever-and-soon-majority-externally-financed/",
      "AI Set to be Largest CapEx Cycle Ever ... and Soon Majority Externally Financed",
      "Paul Kedrosky, June2026",
    )
  ]
]

<p2e>
