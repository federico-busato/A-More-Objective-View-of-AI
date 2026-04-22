#import "config.typ": *

#show: notes-theme.with(title: [Implications for the Future])

// =====================================================================================================================

#title-slide()

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Implications for the Future #h(1fr) 1/3] <touying:hidden>

#show outline.entry.where(level: 1): set block(above: 60pt)
#outline(target: selector(heading).after(<p1s>).before(<p1e>), title: none)

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Implications for the Future #h(1fr) 2/3] <touying:hidden>

#show outline.entry.where(level: 1): set block(above: 30pt)
#outline(target: selector(heading).after(<p2s>).before(<p2e>), title: none)

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Implications for the Future #h(1fr) 3/3] <touying:hidden>

#show outline.entry.where(level: 1): set block(above: 30pt)
#outline(target: selector(heading).after(<p3s>).before(<p3e>), title: none)

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

#notes_slide(title: [Unlikely Exponential Growth #science-tag()], group: "exponential-growth")[

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

#notes_slide(title: [Unlikely Exponential Growth #science-tag()], group: "exponential-growth")[

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

#notes_slide(title: [Unlikely Exponential Growth #science-tag()], group: "exponential-growth")[

  #set text(size: 18pt)
  #v(-50pt)
  #quote()[
    #indent() #emph["#bold[The data center share of U.S. total electricity demand in 2030 ranges from 9% to 17%, an increase from 4-5% today]. At the state level, continued development of the largest DC market in Virginia implies a share increasing to between 39% and 57% by 2030."]
  ]

  #v(-10pt)
  #align(center)[
    #image("03.Implications_for_the_Future/datacenter_energy.png", width: 60%)
  ]

  #v(-50pt)
  #notes_unmarked_footnote_link(
    "https://powering-intelligence.epri.com/executive-summary.html",
    "Powering Intelligence 2026",
    "EPRI, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [Unlikely Exponential Growth #science-tag()], group: "exponential-growth")[

  #set list(spacing: 40pt)
  - #bold[Running out of data]. AI training will exhaust its data by 2027, or by 2032 if the rate of computing growth slows down. #notes_footnote_link(
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


= Productivity Gain Uncertainty

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
    #image("03.Implications_for_the_Future/ai_saving_time.png", height: 70%)
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
    #image("03.Implications_for_the_Future/smothering_heights.png", height: 83%)
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
    #image("03.Implications_for_the_Future/metr_v2.png", height: 83%)
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
    #image("03.Implications_for_the_Future/apollo.png", height: 95%)
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
    #image("03.Implications_for_the_Future/epochai_tasks.png", height: 95%)
  ]

  #v(-20pt)
  #notes_unmarked_footnote_link(
    "https://epochai.substack.com/p/ai-is-a-common-workplace-tool-half",
    "Half of employed Al users now use it for work",
    "E. & C. Falkman Olsson, Epoch AI, 2026",
  )
]

// =====================================================================================================================

= Employment <p1e>

// =====================================================================================================================

#notes_slide(title: [Productivity Gain and Labor Markets #science-tag()])[

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

#notes_slide(title: [Employment #news-tag()], group: "employment")[

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

#notes_slide(title: [Employment #news-tag()], group: "employment")[

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

#notes_slide(title: [Employment #science-tag()], group: "employment")[

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

#notes_slide(title: [Employment #science-tag()], group: "employment")[

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

#notes_slide(title: [Employment #science-tag()], group: "employment")[

  #notes_quote(
    title: [FEDS Notes],
    details: [\ 2026],
  )[
    We find that thus far, #bold[there is no evidence of a reduction in job postings for industries or firms which have higher levels of AI adoption]. The overall slowdown in national job postings following the pandemic recovery does not appear to be driven (even modestly) by AI.
    #notes_footnote_link(
      "https://www.federalreserve.gov/econres/notes/feds-notes/ai-adoption-and-firms-job-posting-behavior-20260327.html",
      "FEDS Notes",
      "Board of Governors of the Federal Reserve System, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment #science-tag()], group: "employment")[

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

#notes_slide(title: [Employment #science-tag()], group: "employment")[

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

#notes_slide(title: [Employment #science-tag()], group: "employment")[

  #notes_quote(
    title: [AI and Young-adult Jobs: The Real Mystery],
    details: [\ Economic Innovation Group, 2026],
  )[
    "Young workers of all education levels are lagging the rest of the labor market. #bold[Focusing too much on education rather than age as the main labor market weakness starts us in the wrong direction].

    So is AI nonetheless to blame for the broad-based weakness in the labor market for young people? It's true that some lower-skilled jobs can be replaced by AI. Call center workers and data entry jobs are potential examples. But there are not enough of these jobs to really drive the youth labor market."
    #notes_footnote_link(
      "https://agglomerations.eig.org/p/ai-and-young-adult-jobs-the-real?publication_id=2739407&post_id=190033461&isFreemail=true&r=2mn9q2&triedRedirect=true",
      "AI and Young-adult Jobs: The Real Mystery",
      "Ozimek & Goldschlag, Economic Innovation Group, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Employment #science-tag()], group: "employment")[

  #align(center)[
    #image("03.Implications_for_the_Future/graduate_employment.png", height: 83%)
  ]

  #notes_unmarked_footnote_link(
    "https://www.employamerica.org/labor-market-analysis/dont-blame-ai-for-the-rise-in-recent-graduate-unemployment/",
    "Don't Blame AI For The Rise in Recent Graduate Unemployment",
    "W. Raderman, Employ America, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [Employment #science-tag()], group: "employment")[

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

#notes_slide(title: [Employment #science-tag()], group: "employment")[

  #v(-20pt)
  #align(center)[
    #image("03.Implications_for_the_Future/employment_by_industry.png", height: 88%)
  ]

  #notes_unmarked_footnote_link(
    "https://bsky.app/profile/bencasselman.bsky.social/post/3mizcjhxd4k22",
    "Employment by Industry",
    "B. Casselman, Chief Economics Correspondent for The New York Times, 2026",
  )
]

// =====================================================================================================================

= Positive Impacts <p2s>

// =====================================================================================================================

== Protein Structure Prediction

#notes_slide(title: [Protein Structure Prediction #science-tag()])[

  #notes_quote(title: "AlphaFold2", details: [\ Nobel Prize in Chemistry, 2024])[
    "In 2020, Demis Hassabis and John Jumper presented an AI model called #bold[AlphaFold2]. With its help, they have been able to #bold[predict the structure of virtually all the 200 million proteins] that researchers have identified. Since their breakthrough, #bold[AlphaFold2 has been used by more than two million people from 190 countries]. Among a myriad of scientific applications, researchers can now better understand antibiotic resistance and create images of enzymes that can decompose plastic."
    #notes_footnote_link(
      "https://www.nobelprize.org/prizes/chemistry/2024/press-release/",
      "AlphaFold2",
      "Nobel Prize in Chemistry, 2024",
    )
  ]
]
// =====================================================================================================================

== Material Discovery

#notes_slide(title: [Material Discovery #science-tag()])[

  #set text(size: 19pt)
  #notes_quote(title: "GNoME", details: [DeepMind, 2023])[
    "With GNoME, we've multiplied the number of technologically viable materials known to humanity. Of its 2.2 million predictions, 380,000 are the most stable, #bold[making them promising candidates for experimental synthesis]."
    #notes_footnote_link(
      "https://deepmind.google/blog/millions-of-new-materials-discovered-with-deep-learning/",
      "Millions of new materials discovered with deep learning",
      "Merchant & Cubuk, DeepMind, 2023",
    )
  ]

  #notes_quote(title: "The Materials Project", details: [Berkeley Lab, 2026])[
    "The open-access materials database ... enabling AI-ready scientific datasets at an unprecedented scale for batteries,
    quantum computing, microelectronics, and more.

    #indent() ... in 650,000+ registered users, 32,000+ scientific journal citations, \~5,000 active users a day, 200,000+ materials, 577,000+ molecules, 465+ TBs of data, 300 million+ data requests a year."
    #notes_footnote_link(
      "https://deepmind.google/blog/millions-of-new-materials-discovered-with-deep-learning/",
      "Accelerating Discovery: How the Materials Project Is Helping to Usher in the AI Revolution for Materials Science",
      "Merchant & Cubuk, DeepMind, 2023",
    )
  ]
]

// =====================================================================================================================

== Weather Forecasting

#notes_slide(title: [Weather Forecasting #science-tag()], group: "weather-forecasting")[

  #notes_quote(title: "GraphCast", details: [\ Google, 2023])[
    "GraphCast, a state-of-the-art AI model able to make medium-range weather forecasts with unprecedented accuracy. GraphCast predicts weather conditions up to 10 days in advance #bold[more accurately and much faster than the industry gold-standard weather simulation system]."
    #notes_footnote_link(
      "https://deepmind.google/blog/graphcast-ai-model-for-faster-and-more-accurate-global-weather-forecasting/",
      "GraphCast: AI model for faster and more accurate global weather forecasting",
      "Google, 2023",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Weather Forecasting #science-tag()], group: "weather-forecasting")[

  #notes_quote(title: "FourCastNet", details: [\ Nvidia, 2025])[
    "FourCastNet 3 delivers forecasting accuracy that surpasses leading conventional ensemble models and rivals the best diffusion-based methods, while #bold[producing forecasts 8 to 60 times faster] than these approaches.

    #indent() ... a strong candidate for improving meteorological forecasting and early warning systems."
    #notes_footnote_link(
      "https://arxiv.org/abs/2507.12144",
      "FourCastNet 3: A geometric approach to probabilistic machine-learning weather forecasting at scale",
      "Bonev et al., 2025",
    )
  ]
]

// =====================================================================================================================

== Healthcare

#notes_slide(title: [Healthcare - Drug Discovery #science-tag()])[

  #notes_quote(title: "TNIK Inhibitor", details: [\ Insilico, 2025])[
    Idiopathic pulmonary fibrosis (IPF) is a type of chronic scarring lung disease characterized by a progressive and irreversible decline in lung function affecting around 5 million people globally.
    #notes_footnote_link(
      "https://insilico.com/pipeline_target_targetx",
      "TNIK Inhibitor: Treating Fibrotic diseases (Phase IIa completed)",
      "Insilico, 2025",
    )

    #indent() ... This is the first time an #bold[AI-designed drug] for an AI-discovered disease-associated target #bold[has been tested in the clinic] [phase 2a].
    #notes_footnote_link(
      "https://insilico.com/blog/1112",
      "A Phase 2 Readout Generates Excitement for the Potential of AI-Driven Drug Discovery",
      "Insilico, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Healthcare - Diagnosing Diseases #science-tag()], group: "healthcare")[

  #notes_quote(
    title: [New AI model can detect multiple cognitive brain diseases\ from a single blood sample],
    details: [\ Lund University, 2026],
  )[
    "Using advanced statistical learning methods and a process known as 'joint learning,' the researchers' AI model was able to identify a specific set of proteins that form a general pattern for diseases involving brain degeneration.

    Vogel confirms that their #bold[AI model outperforms previous models, while also being able to diagnose five different dementia-related conditions]: Alzheimer's disease, Parkinson's disease, ALS, frontotemporal dementia, and previous stroke."
    #notes_footnote_link(
      "https://www.lunduniversity.lu.se/article/new-ai-model-can-detect-multiple-cognitive-brain-diseases-single-blood-sample",
      "New AI model can detect multiple cognitive brain diseases from a single blood sample",
      "Lund University, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Healthcare - Diagnosing Diseases #science-tag()], group: "healthcare")[

  #notes_quote(
    title: [Early Prediction of Heart Failure From Routine Cardiac CT Using Radiomic Phenotyping of Epicardial Fat],
    details: [\ Oikonomou et al.,  Journal of the American College of Cardiology, 2026],
  )[
    "The AI tool was trained and validated in 72,000 patients from nine NHS trusts in England, who were followed up for a decade after their CT scans. #bold[It predicted their risk of developing heart failure in the next five years with 86% accuracy.]"
    #notes_footnote_link(
      "https://www.theguardian.com/society/2026/apr/08/oxford-scientists-develop-ai-tool-spot-heart-failure",
      "Scientists develop AI tool to spot heart failure risk five years before it strikes",
      "A. Gregory, The Guardian, 2026",
    )#super(",")
    #notes_footnote_link(
      "https://www.jacc.org/doi/10.1016/j.jacc.2026.02.5116",
      "Early Prediction of Heart Failure From Routine Cardiac CT Using Radiomic Phenotyping of Epicardial Fat",
      "Oikonomou et al.,  Journal of the American College of Cardiology, 2026",
    )
  ]
]

// =====================================================================================================================

== Learning

#notes_slide(title: [Learning #science-tag()], group: "learning")[

  #notes_quote(title: "AI tutoring outperforms in-class active learning", details: [\ Nature, 2025])[
    "#bold[students learn more than twice as much] in less time with an AI tutor compared to an active learning classroom, while also being more engaged and motivated."
    #notes_footnote_link(
      "https://www.nature.com/articles/s41598-025-97652-6",
      "AI tutoring outperforms in-class active learning: an RCT introducing a novel research-based design in an authentic educational setting",
      "Kestin et al., Nature, Scientific Reports, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Learning #science-tag()], group: "learning")[

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

== Soften Polarization <p2e>

#notes_slide(title: [Soften Polarization #news-tag()])[

  #v(-10pt)
  - #bold[AI may help to soften polarization].

  #align(center)[
    #image("03.Implications_for_the_Future/polarization.jpg", height: 78%)
  ]

  #v(-10pt)
  #notes_unmarked_footnote_link(
    "https://www.ft.com/content/3880176e-d3ac-4311-9052-fdfeaed56a0e?syn-25a6b1a6=1",
    "Social media is populist and polarising; AI may be the opposite",
    "Financial Times, 2026",
  )
]

// =====================================================================================================================

= Negative Impacts <p3s>

// =====================================================================================================================

== Environmental Risks

#notes_slide(title: [Environmental Risks - Local Impact #science-tag()], group: "environmental-local")[

  - #bold[While data centers are not a concern on a global scale, they can severely impact local communities]. Their development can harm nearby communities through water use, air pollution, noise, competition for land, and energy cost increases. They can also reduce local tax revenues and typically do not provide other benefits such as high-paying jobs. #notes_footnote_link(
      "https://www.wri.org/insights/us-data-center-growth-impacts",
      "From Energy Use to Air Quality, the Many Ways Data Centers Affect US Communities",
      "Walker and Goldsmith, World Resources Institute, 2026",
    )#super(",") #notes_footnote_link(
      "https://deepmind.google/blog/millions-of-new-materials-discovered-with-deep-learning/",
      "What happens when data centers come to town?",
      "Nguyen & Green, University of Michigan, 2025",
    )

  // Chris Preist at the University of Bristol, UK, says the results may be more nuanced than they first appear. “It would be worth doing follow-up research to understand to what extent it’s the heat generated from computation versus the heat generated from the building itself,”
  //  #notes_quote(title: "AI data centres can warm surrounding areas by up to 9.1°C", details: "Marinoni et al., 2026")[
  //    "Land surface temperatures increased by an average of 2°C (3.6°F) in the months after an AI data centre started //operations. In the most extreme cases, the #bold[increase in temperature was 9.1°C] (16.4°F)."
  //    #notes_footnote_link(
  //      "https://www.newscientist.com/article/2521256-ai-data-centres-can-warm-surrounding-areas-by-up-to-9-1c/",
  //      "AI data centres can warm surrounding areas by up to 9.1°C",
  //      "Marinoni et al., arXiv, 2026",
  //    )
  //  ]
]

// =====================================================================================================================

#notes_slide(title: [Environmental Risks - Local Impact #news-tag()], group: "environmental-local")[

  #notes_quote(title: "Inside the Dirty, Dystopian World of AI Data Centers", details: [\ The Atlantic, 2026])[
    "... #bold[residents report that they have had respiratory issues flare up] since xAI moved in.

    #indent() ... Using satellite data, researchers at the University of Tennessee at Knoxville found that levels of nitrogen dioxide --- which causes smog and is associated with asthma and other respiratory problems --- near Colossus have been substantially elevated since its public announcement."
    #notes_footnote_link(
      "https://www.theatlantic.com/magazine/2026/04/ai-data-centers-energy-demands/686064/",
      "Inside the Dirty, Dystopian World of AI Data Centers",
      "M Wong, The Atlantic, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Environmental Risks - Local Impact #news-tag()], group: "environmental-local")[

  #notes_quote(
    title: "A New Google-Funded Data Center Will Be Powered by a Massive Gas Plant",
    details: [\ Wired, 2026],
  )[
    "A new data center being built with investments from Google will be partly powered by a natural gas project that emits the yearly emissions #bold[equivalent of putting more than 970,000 additional gas-powered cars on the road]."
    #notes_footnote_link(
      "https://www.wired.com/story/a-new-google-funded-data-center-will-be-powered-by-a-massive-gas-plant/",
      "A New Google-Funded Data Center Will Be Powered by a Massive Gas Plant",
      "Taft et al., Wired, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Environmental Risks - Global Impact #science-tag()], group: "environmental-global")[

  - #bold[Carbon emissions from AI are negligible compared to other sources]. Additionally, this technology has the potential to develop new materials #notes_footnote_link(
      "https://deepmind.google/blog/millions-of-new-materials-discovered-with-deep-learning/",
      "Millions of new materials discovered with deep learning",
      "Merchant & Cubuk, DeepMind, 2023",
    ), fund small nuclear reactors #notes_footnote_link(
      "https://www.cnbc.com/2025/03/29/these-nuclear-companies-lead-the-race-to-build-small-reactors-in-us.html",
      "These nuclear companies are leading the race to build advanced small reactors in the U.S.",
      "S. Kimball, CNBC, 2025",
    ), and improve transportation planning and routing #notes_footnote_link(
      "https://blog.google/products-and-platforms/products/maps/google-maps-101-how-ai-helps-predict-traffic-and-determine-routes/",
      "GreenLight, Using Google AI to reduce traffic emissions",
      "Google, 2025",
    ), which could contribute to reducing carbon emissions overall.

]

// =====================================================================================================================

#notes_slide(title: [Environmental Risks - Global Impact #comment-tag()], group: "environmental-global")[

  #notes_quote(title: "A. Holub", details: [\ 2026])[
    "#bold[All data centers combined account for about 0.5% of global carbon emissions].
    #notes_footnote_link(
      "https://www.iea.org/reports/energy-and-ai/ai-and-climate-change",
      "AI and climate change",
      "International Energy Agency (IEA), 2025",
    )
    Of that, \~10% is AI-related, so AI is responsible for 0.05% of global carbon emissions. Cars and other transportation account for ~25% of total emissions."
    #notes_footnote_link(
      "https://bsky.app/profile/allenholub.bsky.social/post/3mhvqmev2yk2o",
      "A. Holub, 2026",
      "",
    )
  ]

  #notes_quote(title: "Robots Are Quietly Building the Future of Renewable Energy", details: [\ OilPrice, 2026])[
    "Robots are dramatically increasing efficiency in solar and wind projects, with systems capable of doubling installation speeds and improving precision."
    #notes_footnote_link(
      "https://bsky.app/profile/allenholub.bsky.social/post/3mhvqmev2yk2o",
      "Robots Are Quietly Building the Future of Renewable Energy",
      "F. Bradstock, OilPrice, 2026",
    )
  ]
]

// =====================================================================================================================

== Cognitive Offloading and Deskilling

#notes_slide(title: [Cognitive Offloading and Deskilling #science-tag()], group: "cognitive-offloading")[

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

#notes_slide(title: [Cognitive Offloading and Deskilling #science-tag()], group: "cognitive-offloading")[

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

#notes_slide(title: [Cognitive Offloading and Deskilling #science-tag()], group: "cognitive-offloading")[

  #notes_quote(
    title: "Thinking-Fast, Slow, and Artificial: How AI is Reshaping Human Reasoning and the Rise of Cognitive Surrender",
    details: [\ University of Pennsylvania, 2026],
  )[
    "Our findings demonstrate that people readily incorporate AI-generated outputs into their decision-making processes, #bold[often with minimal friction or skepticism].

    #indent() These findings raise important questions about how decision-makers engage with AI under conditions of uncertainty or error. For example, in contexts such as financial advice, medical triage, or legal decision support, uncritical evaluation of System 3 #bold[could result in significant harm and a lack of personal accountability for serious life outcomes.]"
    #notes_footnote_link(
      "https://papers.ssrn.com/sol3/papers.cfm?abstract_id=6097646",
      "Thinking-Fast, Slow, and Artificial: How AI is Reshaping Human Reasoning and the Rise of Cognitive Surrender",
      "Shaw & Nave, University of Pennsylvania, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Cognitive Offloading and Deskilling #science-tag()], group: "cognitive-offloading")[

  #notes_quote(
    title: "Jeremy Howard",
    details: [\ The Dangerous Illusion of AI Coding?, 2026],
  )[
    "If you focus on just driving out results at the limit of whatever AI can do right now, you're only caring about the intercept, you know. #bold[So I think it's basically a path to obsolescence through both the company and the people who are in it]. And so I'm really surprised how many executives of big companies are pushing this now ...

    #indent() ... #bold[They're basically setting up their companies to be destroyed.]"
    #notes_footnote_link(
      "https://www.youtube.com/watch?v=dHBEQ-Ryo24",
      "The Dangerous Illusion of AI Coding?",
      "Jeremy Howard, 2026",
    ) <jeremy_howard>
  ]
]


// =====================================================================================================================

#notes_slide(title: [Cognitive Offloading and Deskilling #science-tag()], group: "cognitive-offloading")[

  #notes_quote(
    title: "Jeremy Howard",
    details: [\ The Dangerous Illusion of AI Coding?, 2026],
  )[
    So the default behavior is very similar to a self driving car. But there's this tipping point where at some point, you're not engaged anymore. You're not paying attention. And #bold[you get this delegation of competence. And you get understanding debt.]

    #indent() ... But what happens is that the default attractor is for people to just go into this autopilot mode and they've got no idea what's happening and #bold[it's actually making them dumber]". @jeremy_howard
  ]
]

// =====================================================================================================================

== Echo Chamber

#notes_slide(title: [Echo Chamber (Sycophancy Again) #science-tag()])[

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

== Health Risks

#notes_slide(title: [Health Risks #science-tag()], group: "health-risks")[

  #notes_quote(
    title: "Patients Use AI-Clinicians Should Ask How",
    details: [\ JAMA Psychiatry, 2026],
  )[
    "More than 5 million US youth (13.1%) have sought mental health advice from AI, #bold[with rates reaching 22.2% among 18- to 21-year-olds]. A 2025 study of adults with mental health conditions who use large language models reported nearly half use them for support, including for anxiety, depression, and personal advice. Users seek emotional support, companionship, psychoeducation, and help processing difficult experiences, likely between sessions and #bold[sometimes instead of clinical care altogether]."
    #notes_footnote_link(
      "https://www.nature.com/articles/s41598-025-97652-6",
      "Patients Use AI-Clinicians Should Ask How",
      "K. Saba & B. Weeks, JAMA Psychiatry, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Health Risks #science-tag()], group: "health-risks")[

  #notes_quote(
    title: "Generative artificial intelligence-driven chatbots and medical misinformation: an accuracy, referencing and readability audit",
    details: [\ BMJ Open, 2026],
  )[
    "Most interactions, however, come from non-experts using chatbots like search engines, including for everyday health and medical queries.

    #indent() ... #bold[Nearly half (49.6%) of responses were problematic]: 30% somewhat problematic and 19.6% highly problematic... #bold[Chatbot outputs were consistently expressed with confidence and certainty]; ...  Reference quality was poor... Chatbot hallucinations and fabricated citations precluded any chatbot from producing a fully accurate reference list."
    #notes_footnote_link(
      "https://bmjopen.bmj.com/content/16/4/e112695",
      "Generative artificial intelligence-driven chatbots and medical misinformation: an accuracy, referencing and readability audit",
      "Tiller et al., BMJ Open, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Health Risks #science-tag()], group: "health-risks")[

  #notes_quote(
    title: "Americans Turning to AI to Supplement Healthcare Visits",
    details: [\ Gallup, 2026],
  )[
    - "59% who use AI for health info are researching before doctor visits.
    - #bold[About 14 million adults report skipping a provider visit after using AI].
    - Only 4% who use AI for health info strongly trust its accuracy". #notes_footnote_link(
        "https://news.gallup.com/poll/707789/americans-turning-supplement-healthcare-visits.aspx",
        "Americans Turning to AI to Supplement Healthcare Visits",
        "Raynes & Maese, Gallup, 2026",
      )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Health Risks #science-tag()], group: "health-risks")[

  #notes_quote(
    title: "Scientists invented a fake disease. AI told people it was real",
    details: [\ Nature, Feature News, 2026],
  )[
    "The condition doesn't appear in the standard medical literature --- because it doesn't exist. It's the invention of a team led by Almira Osmanovic Thunström, a medical researcher at the University of Gothenburg, Sweden, who dreamt up the skin condition and then uploaded two fake studies about it to a preprint server in early 2024.

    #indent() ... Even more troublingly, other researchers say, #bold[the fake papers were then cited in peer-reviewed literature]."
    #notes_footnote_link(
      "https://www.nature.com/articles/d41586-026-01100-y",
      "Scientists invented a fake disease. AI told people it was real",
      "C. Stokel-Walker, Nature, Feature News, 2026",
    )
  ]
]

// =====================================================================================================================

== Social Risks <p3e>

#notes_slide(title: [Social Risks #science-tag()], group: "social-risks")[

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
    "https://www.reuters.com/business/media-telecom/ai-deepfakes-blur-reality-2026-us-midterm-campaigns-2026-03-28/",
    "AI deepfakes blur reality in 2026 US midterm campaigns",
    "Ax & Coster, Reuters, 2026",
  )#super(",")
  #notes_footnote_link(
    "https://www.technologyreview.com/2026/01/29/1131938/dhs-is-using-google-and-adobe-ai-to-make-videos/",
    "DHS is using Google and Adobe AI to make videos",
    "J. O'Donnell, MIT Technology Review, 2026",
  )

  #v(-30pt)
  #notes_quote(title: "How malicious AI swarms can threaten democracy", details: [Science, 2026])[
    "Fusing LLM reasoning with multiagent architectures, these systems are capable of coordinating autonomously, infiltrating communities, and fabricating consensus efficiently. #bold[By adaptively mimicking human social dynamics, they threaten democracy]."
    #notes_footnote_link(
      "https://www.science.org/doi/10.1126/science.adz1697",
      "How malicious AI swarms can threaten democracy",
      "Schroeder et al., Science, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Social Risks #science-tag()], group: "social-risks")[

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
