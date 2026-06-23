#import "config.typ": *

#show: notes-theme.with(title: [Implications for the Future], subtitle: [Positive and Negative Impacts])

// =====================================================================================================================

#title-slide()

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Implications for the Future #h(1fr) 1/2] <touying:hidden>

#show outline.entry.where(level: 1): set block(above: 30pt)
#outline(target: selector(heading).after(<p2s>).before(<p2e>), title: none)

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Implications for the Future #h(1fr) 2/2] <touying:hidden>

#show outline.entry.where(level: 1): set block(above: 30pt)
#outline(target: selector(heading).after(<p3s>).before(<p3e>), title: none)

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

#notes_slide(title: [Protein Structure Prediction #science-tag()], group: "protein-structure-prediction")[

  #notes_quote(
    title: "A generative artificial intelligence approach for peptide antibiotic optimization",
    details: [\ Torres et al., Nature, 2026],
  )[
    "ApexGO achieved an 85% ground-truth experimental hit rate and a 72% success rate in enhancing antimicrobial activity against Gram-negative pathogens, outperforming previously reported methods for antibiotic discovery and optimization.

    #indent() ... artificial-intelligence-optimized molecules exhibited potent anti-infective activity #bold[superior to their template controls and comparable with or exceeding that of last-resort antibiotic]."
    #notes_footnote_link(
      "https://www.nature.com/articles/s42256-026-01237-5#Sec11",
      "A generative artificial intelligence approach for peptide antibiotic optimization",
      "Torres et al., Nature, 2026",
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
    "Idiopathic pulmonary fibrosis (IPF) is a type of chronic scarring lung disease characterized by a progressive and irreversible decline in lung function affecting around 5 million people globally.
    #notes_footnote_link(
      "https://insilico.com/pipeline_target_targetx",
      "TNIK Inhibitor: Treating Fibrotic diseases (Phase IIa completed)",
      "Insilico, 2025",
    )

    #indent() ... This is the first time an #bold[AI-designed drug] for an AI-discovered disease-associated target #bold[has been tested in the clinic] [phase 2a]."
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
    title: [Next-generation AI for visually occult pancreatic cancer detection in a low-prevalence setting with longitudinal stability and multi-institutional generalisability],
    details: [\ BMJ Gut, 2026],
  )[
    "REDMOD [Radiomics-based Early Detection MODel] detects the subvisual signature of pre-clinical PDA [pancreatic ductal adenocarcinoma] a median of #bold[475 days before clinical diagnosis].

    #indent() ... The performance of #bold[REDMOD surpasses that of radiologists, demonstrating nearly double the sensitivity] for detecting visually occult PDA, with an advantage that increases to #bold[nearly threefold for cases detected more than 24 months prior to diagnosis]."
    #notes_footnote_link(
      "https://gut.bmj.com/content/early/2026/04/22/gutjnl-2025-337266",
      "Next-generation AI for visually occult pancreatic cancer detection in a low-prevalence setting with longitudinal stability and multi-institutional generalisability",
      "Mukherjee et al., BMJ Gut, 2026",
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

== Ancient Languages

#notes_slide(title: [Ancient Languages #science-tag()], group: "ancient-languages")[

  #notes_quote(
    title: [Austrian Academy of Sciences is developing the Ancient Greek AI\ "Apollo" with Mistral AI and Reply],
    details: [\ Austrian Academy of Sciences, 2026],
  )[
    "AI system can be developed in many directions for a wide range of research tasks, from reconstructing fragmentary inscriptions and papyri to conducting semantic and thematic searches across the entire Greek textual tradition to deciphering handwritten texts. For example, #bold[there are one million Greek papyri worldwide that have never been read]."
    #notes_footnote_link(
      "https://www.oeaw.ac.at/en/news/austrian-academy-of-sciences-is-developing-the-ancient-greek-ai-apollo-with-mistral-ai-and-reply",
      "Austrian Academy of Sciences is developing the Ancient Greek AI “Apollo” with Mistral AI and Reply",
      "Austrian Academy of Sciences, 2026",
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

#notes_slide(title: [Soften Polarization #news-tag()], group: "soften-polarization")[

  #v(-10pt)
  - #bold[AI may help to soften polarization].

  #align(center)[
    #image("04.Implications_for_the_Future_part2/polarization.jpg", height: 78%)
  ]

  #v(-10pt)
  #notes_unmarked_footnote_link(
    "https://www.ft.com/content/3880176e-d3ac-4311-9052-fdfeaed56a0e?syn-25a6b1a6=1",
    "Social media is populist and polarising; AI may be the opposite",
    "Financial Times, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [Soften Polarization #science-tag()], group: "soften-polarization")[

  #notes_quote(
    title: "AI Sycophancy and Decisions",
    details: [\ Conlon & Schwardmann, April 2026],
  )[
    "#bold[Rather than polarizing choices, interacting with AI on average depolarizes
      decisions], improves accuracy where there is an objective notion of correctness, and increases
    confidence in final choices.

    #indent() ...  Moreover, we find little evidence that market forces or user selection are pushing toward greater polarization. These results suggest that contemporary AI advice tends to improve rather than distort judgment.
    #notes_footnote_link(
      "https://papers.ssrn.com/sol3/papers.cfm?abstract_id=6597184",
      "AI Sycophancy and Decisions",
      "Conlon & Schwardmann, April 2026",
    )
  ]
]

// =====================================================================================================================

= Negative Impacts <p3s>

// =====================================================================================================================

== Environmental Risks

#notes_slide(title: [Environmental Risks - Local Impact #science-tag()], group: "environmental-local")[

  - #bold[While data centers are not a concern on a global scale, they can severely impact local communities]. Their development can harm nearby communities through #strike[water use], air pollution #notes_footnote_link(
      "https://www.washingtonpost.com/business/2026/05/28/data-centers-boom-virginians-breathe-exhaust-10000-diesel-generators/",
      "See where diesel-powered data center generators are polluting Virginia",
      "Halper & Kevin Crowe, The Washington Post, 2026",
    ), noise, competition for land, and #strike[energy cost increases]. They can also reduce local tax revenues and typically do not provide other benefits such as high-paying jobs. #notes_footnote_link(
      "https://www.wri.org/insights/us-data-center-growth-impacts",
      "From Energy Use to Air Quality, the Many Ways Data Centers Affect US Communities",
      "Walker & Goldsmith, World Resources Institute, 2026",
    )#super(",") #notes_footnote_link(
      "https://deepmind.google/blog/millions-of-new-materials-discovered-with-deep-learning/",
      "What happens when data centers come to town?",
      "Nguyen & Green, University of Michigan, 2025",
    )
]

// =====================================================================================================================

#notes_slide(title: [Environmental Risks - Local Impact #science-tag()], group: "environmental-local")[

  #notes_quote(
    title: "Data Centers and Local Economies in the Age of AI: A Shift-Share Approach",
    details: [\ National Bureau of Economic Research, 2026],
  )[
    "#bold[The policy implication is therefore mixed. Data centers create economic activity, especially in directly related sectors and during construction], and they are associated with larger county-level income aggregates. They also raise electricity prices and are associated with higher house prices, which may benefit property owners while increasing costs for renters and  prospective homebuyers."
    #notes_footnote_link(
      "https://www.nber.org/system/files/working_papers/w35194/w35194.pdf",
      "Data Centers and Local Economies in the Age of AI: A Shift-Share Approach",
      "Alvarez et al., National Bureau of Economic Research, 2026",
    )
  ]
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

#notes_slide(title: [Environmental Risks - Carbon Emissions #science-tag()], group: "carbon-emissions")[

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

#notes_slide(title: [Environmental Risks - Carbon Emissions #comment-tag()], group: "carbon-emissions")[

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
]

// =====================================================================================================================

#notes_slide(title: [Environmental Risks - Energy #science-tag()], group: "energy-consumption")[

  #notes_quote(
    title: "US Data Center Power Demand Projected to Double by 2027",
    details: [\ Goldman Sachs, 2026],
  )[
    "Data centers' share of total US peak summer #bold[power demand is projected to jump to 8.5% in 2027] from 4.1% in 2025, creating significant tightening across the national power market."
    #notes_footnote_link(
      "https://www.goldmansachs.com/insights/articles/us-data-center-power-demand-projected-to-double-by-2027",
      "US Data Center Power Demand Projected to Double by 2027",
      "Goldman Sachs, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Environmental Risks - Energy #science-tag()], group: "energy-consumption")[

  #notes_quote(
    title: [Have Data Centers Raised Your Electric Bill?\ Causal Evidence from the United States],
    details: [\ Wattenberg et al., 2026],
  )[
    "From 2021 to 2024 demand grew on average a modest 1.5% year over year while electricity rates grew at 5.2%, in line with the average annual increase in core consumer prices of 5.8%, meaning inflation adjusted electricity rates were flat on average.

    #indent() ... #bold[We estimate for every 10% increase in data center capacity average residential retail prices fell by approximately 0.4% on average]."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2606.19777",
      "Have Data Centers Raised Your Electric Bill? Causal Evidence from the United States",
      "Wattenberg et al., June 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Environmental Risks - Water Consumption #science-tag()], group: "water-consumption")[

  #quote()[
    #indent() "#bold[The vast majority] (maybe 90%) is withdrawn, freshwater (not potable) that is indirectly (offsite) used non-consumptively in power plants (it's #bold[returned to the source unaffected]).

    #indent() ... All U.S. data centers (#bold[which mostly support the internet, not AI]) used 200-250 million gallons of freshwater daily in 2023. The U.S. consumes approximately 132 billion gallons of freshwater daily... So #bold[data centers in the U.S. consumed approximately 0.2% of the nation's freshwater in 2023]... It's a miracle that something we spend 50% of our time using only consumes 0.2% of our water."
  ]
]

// =====================================================================================================================

#notes_slide(title: [Environmental Risks - Water Consumption #science-tag()], group: "water-consumption")[

  #notes_quote(title: "The AI water issue is fake", details: [\ Andy Masley, 2026])[
    #indent() ... #bold[Only 0.04% of America's freshwater in 2023 was consumed inside data centers themselves]. This is 3% of the water consumed by the American golf industry.

    #indent() ... #bold[So in 2030, AI in data centers specifically will be using 0.08% of America's freshwater]. This means it will rise to the level of 5% of America's current water used on golf courses, or 5% of U.S. steel production, or be about 173 square miles of irrigated corn farms.
    #notes_footnote_link(
      "https://blog.andymasley.com/p/the-ai-water-issue-is-fake",
      "The AI water issue is fake",
      "Andy Masley, 2026",
    )
  ]
]

// =====================================================================================================================

== Cognitive Offloading and Deskilling

#notes_slide(title: [Cognitive Offloading and Deskilling #science-tag()], group: "cognitive-offloading")[

  - #bold[AI has demonstrated significant user deskilling].
  #notes_quote(
    title: "AI Assistance Reduces Persistence and Hurts Independent Performance",
    details: [\ Liu et al. (Carnegie Mellon, MIT, Oxford, UCLA), April 2026],
  )[
    "Current AI systems, however, represent a new kind of cognitive scaffold: one that solves anything, rarely refuses to help, and delivers answers instantly. Here, we show that #bold[just 10-15 minutes of AI interaction can result in significant impairments in independent performance and persistence --- capacities that are foundational to life-long learning]. If brief exposure produces measurable erosion, the cumulative effects of daily AI use over months or years may be profound and difficult to reverse."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2604.04721",
      "AI Assistance Reduces Persistence and Hurts Independent Performance",
      "Liu et al. (Carnegie Mellon, MIT, Oxford, UCLA), April 2026",
    ) <liu_et_al>
  ]
]

// =====================================================================================================================

#notes_slide(title: [Cognitive Offloading and Deskilling #science-tag()], group: "cognitive-offloading")[

  #align(center)[
    #image("04.Implications_for_the_Future_part2/solve_rate.png", width: 105%)
  ]

  #quote()[
    #indent() "#bold[Effects are concentrated among users who seek direct solutions]: Persistence costs were concentrated among participants who prompted AI to solve tasks for them directly. #bold[Using AI for hints or clarifications did not produce significant impairments.]
    " @liu_et_al
  ]
]

// =====================================================================================================================

#notes_slide(title: [Cognitive Offloading and Deskilling #science-tag()], group: "cognitive-offloading")[

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

    #indent() #bold[Brain connectivity systematically scaled down with the amount of external support]: the Brain-only group exhibited the strongest, widest-ranging networks, Search Engine group showed intermediate engagement, and LLM assistance elicited the weakest overall coupling. \*"
    #notes_footnote_link(
      "https://arxiv.org/pdf/2506.08872",
      "Your Brain on ChatGPT: Accumulation of Cognitive Debt when Using an AI Assistant for Essay Writing Task",
      "Kosmyna et al., arXiv, 2025",
    )
  ]

  #set text(size: 16pt)
  \* "The ChatGPT group showed notably less brain activity --- it was reduced by up to 55%."

  #notes_unmarked_footnote_link(
    "https://www.bbc.com/news/technology-65500506",
    "AI chatbots could be making you stupider",
    "BBC, 2026",
  )
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
    title: [The Generative AI Learning Penalty:\ Evidence from Chinese Secondary Education],
    details: [\ CEPR, 2026],
  )[
    "AI adoption raises homework scores by 18% and reduces completion time by 30%, but #bold[lowers monthly exam scores by 20% within six months].

    #indent() ... #bold[High-stakes entrance-exam scores fall by 18 and 24%], with the full penalty emerging only after about two years.

    #indent() ... The learning losses are concentrated among roughly 80% of AI users whose behavior is consistent with homework outsourcing

    #indent() ... #bold[AI users who maintain similar homework completion time as non-AI users experience small learning losses]."
    #notes_footnote_link(
      "https://cepr.org/publications/dp21577",
      "The Generative AI Learning Penalty: Evidence from Chinese Secondary Education",
      "Strömberg et al., CEPR, June 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Cognitive Offloading and Deskilling #science-tag()], group: "cognitive-offloading")[

  #notes_quote(
    title: [Who Benefits from AI? Self-Selection, Skill Gap,\ and the Hidden Costs of AI Feedback],
    details: [\ Riedl & Bogert, 2026],
  )[
    When many individuals consult the same centralized source of information, their beliefs and strategies tend to converge toward a common set of outputs, replacing previously heterogeneous private knowledge with shared knowledge derived from that source

    #indent() ... #bold[This population-level loss of intellectual diversity could then negatively affect long-term problem solving ability of firms and undermine firms' competitive advantage]
    #notes_footnote_link(
      "https://arxiv.org/pdf/2409.18660",
      "Who Benefits from AI? Self-Selection, SkillGap, and the Hidden Costs of AI Feedback",
      "Riedl & Bogert, arXiv, 2026",
    ) <riedl_bogert>
  ]
]

// =====================================================================================================================

#notes_slide(title: [Cognitive Offloading and Deskilling #science-tag()], group: "cognitive-offloading")[


  #notes_quote(
    title: [ChatGPT as a cognitive crutch: Evidence from a randomized controlled trial on knowledge retention],
    details: [\ Social Sciences & Humanities Open, 2026],
  )[
    " Students who learned without AI retained substantially more information after 45 days than those who used ChatGPT. The effect size corresponds to an \~11 percentage-point performance gap.

    #indent() ... #bold[By providing immediate, comprehensive answers, the AI tool facilitated a form of cognitive offloading that eliminated the desirable difficulties needed for deep learning]. Skipping those effortful processes likely led to weaker memory encoding, as evidenced by the steeper forgetting curve in the AI-assisted group"
    #notes_footnote_link(
      "https://www.cbre.com/insights/reports/ais-impact-on-the-economy-employment-and-productivity",
      "ChatGPT as a cognitive crutch: Evidence from a randomized controlled trial on knowledge retention",
      "A. Barcaui, Social Sciences & Humanities Open, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Cognitive Offloading and Deskilling #news-tag()], group: "cognitive-offloading")[

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

#notes_slide(title: [Cognitive Offloading and Deskilling #news-tag()], group: "cognitive-offloading")[

  #notes_quote(
    title: "Jeremy Howard",
    details: [\ The Dangerous Illusion of AI Coding?, 2026],
  )[
    So the default behavior is very similar to a self driving car. But there's this tipping point where at some point, you're not engaged anymore. You're not paying attention. And #bold[you get this delegation of competence. And you get understanding debt.]

    #indent() ... But what happens is that the default attractor is for people to just go into this autopilot mode and they've got no idea what's happening and #bold[it's actually making them dumber]".
  ]
]

// =====================================================================================================================

== Sycophancy

#notes_slide(title: [Sycophancy #science-tag()], group: "sycophancy")[

  #notes_quote(
    title: [Sycophantic AI makes human interaction feel more effortful\ and less satisfying over time],
    details: [\ Ibrahim et al., 2026],
  )[
    "Focusing on the personal advice domain, we show that #bold[interactions with sycophantic
      AI can lead people to anticipate greater effort to be understood in their closest relationships], leave them less satisfied with their real-world social interactions, and over time, #bold[shift them toward treating sycophantic AI as a source of advice] comparable to friends and family."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2602.14270",
      "Sycophantic AI makes human interaction feel more effortful and less satisfying over time",
      "Ibrahim et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Sycophancy #science-tag()], group: "sycophancy")[

  #notes_quote(
    title: [When Chatbots Accommodate: What AI Companions Optimize for in Vulnerable Conversations],
    details: [\ Duc Chu et al., June 2026],
  )[
    "#bold[Our findings reveal what AI companions prioritize in conversations with vulnerable users]: GPT4.1 reaches for advice, Character.AI spreads its response across different strategies without a dominant mode, and Replika consistently asks questions and stays present. Each, however, downweights the responses that introduce corrective friction."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2602.14270",
      "When Chatbots Accommodate: What AI Companions Optimize for in Vulnerable Conversations",
      "Duc Chu et al., arXiv, June 2026",
    )
  ]
]

// =====================================================================================================================

== Echo Chamber

#notes_slide(title: [Echo Chamber (Sycophancy) #science-tag()], group: "echo-chamber")[

  #notes_quote(title: "A Rational Analysis of the Effects of Sycophantic AI", details: [\ Batista et al., 2026])[
    "We have provided both theoretical and empirical results showing that AI systems providing information that is informed by the user's hypotheses #bold[result in increased confidence in those hypotheses while not bringing the user any closer to the truth]."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2602.14270",
      "A Rational Analysis of the Effects of Sycophantic AI",
      "Batista et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Echo Chamber (Sycophancy) #science-tag()], group: "echo-chamber")[

  #notes_quote(
    title: "Sycophantic AI increases attitude extremity and overconfidence",
    details: [\ Rathje et al., 2026],
  )[
    "#bold[AI companies are making design choices that impact the psychology of billions of people worldwide]. We found that brief interactions with #bold[sycophantic AI chatbots lead to more extreme and certain beliefs --- but greater enjoyment]. Thus, AI companies face a tradeoff between creating engaging and enjoyable AI systems that foster 'echo chambers' or creating less engaging AI systems that may be healthier for users and public discourse."
    #notes_footnote_link(
      "https://osf.io/preprints/psyarxiv/vmyek_v1",
      "Sycophantic AI increases attitude extremity and overconfidence",
      "Rathje et al., PsyArXiv, 2026",
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

  #v(-10pt)
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

  #notes_quote(
    title: "Edelman Trust Barometer",
    details: [2026],
  )[
    "Consumers are adopting AI across healthcare touchpoints.

    #bold[64% of respondents believe fluent AI users can perform at least one task as well as --- or better than --- a doctor], including performing basic medical procedures 22%, and determining proper treatment or medication 21%."
    #notes_footnote_link(
      "https://www.edelman.com/sites/g/files/aatuss191/files/2026-04/Health%20Trust%202026_Top%2010%20Findings.pdf",
      "Edelman Trust Barometer",
      "16 Countries, 16,000+ Respondents, 2026",
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

== Inequality

// =====================================================================================================================

#notes_slide(title: [Inequality #science-tag()], group: "inequality")[

  #notes_quote(
    title: [Who Benefits from AI? Self-Selection, Skill Gap,\ and the Hidden Costs of AI Feedback],
    details: [\ Riedl & Bogert, 2026],
  )[
    "The apparent benefits of AI feedback are largely or entirely attributable to the same unobserved factors that drive AI adoption and engagement. Learning is concentrated among higher-skill, highly motivated individuals, due to their endogenous tendency to seek more AI feedback and use it more productively (after a failure). This individual-level pattern has important implications on the population level: #bold[Instead of lifting lower-skilled individuals who have the most to gain, AI disproportionately complements higher-skilled individuals --- amplifying the existing skill gap]."
    @riedl_bogert
  ]
]

// =====================================================================================================================

#notes_slide(title: [Inequality #science-tag()], group: "inequality")[

  #v(-20pt)
  #notes_quote(
    title: [Apocalypse No],
    details: [S. Galloway, 2026],
  )[
    "AI's popularity is correlated to wealth, with only those earning more than \$200,000 per year viewing AI as a net positive."
    <galloway_2026>
  ]
  #v(-10pt)
  #align(center)[
    #image("04.Implications_for_the_Future_part2/galloway_2026.png", height: 60%)
  ]
  #v(-40pt)
  #notes_unmarked_footnote_link(
    "https://poll.qu.edu/poll-release?releaseid=3955",
    "The Age Of Artificial Intelligence: Americans' AI Use Increases While Views On It Sour",
    "Quinnipiac University Poll, 2026",
  )
]

// =====================================================================================================================

== User Manipulation

// =====================================================================================================================

#notes_slide(title: [User Manipulation #science-tag()], group: "user-manipulation")[

  #set text(size: 19pt)
  #notes_quote(
    title: "Biased AI writing assistants shift users' attitudes onsocietal issues",
    details: [\ Science Advances, 2026],
  )[
    "Our findings offer robust evidence of one of multiple possible ways in which advanced artificial intelligence in the form of #bold[AI writing assistants can distort human beliefs and contribute to bias.]

    #indent() ... Alarmingly, our work shows that biased #bold[AI models can distort attitudes in a covert and implicit way, without people noticing] that they are being presented with a persuasive argument by a different actor.

    #indent() ... people who accepted more words from the biased AI suggestions exhibited stronger attitude shifts toward the biased position.

    #indent() ... Participants whose attitudes shifted toward the AI's position  #bold[often failed to notice the suggestions' biases and influence on their attitudes.]"
    #notes_footnote_link(
      "https://arxiv.org/pdf/2605.26010",
      "Biased AI writing assistants shift users' attitudes on societal issues",
      "Williams-Ceci et al., Science Advances, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [User Manipulation #science-tag()], group: "user-manipulation")[

  #notes_quote(
    title: "The Illusion of Competence: Self-Perceived Digital Literacy and AI Readiness Among European Secondary Students",
    details: [\ Rodriguez-Alvarez et al., 2026],
  )[
    "'AI Paradox' wherein students significantly overestimate their critical awareness of deepfakes and algorithmic biases compared to their operational AI skills

    #indent() ... The familiarity of this generation with basic social media filters appears to create a false sense of invulnerability, leading to an 'illusion of competence' where #bold[young users severely underestimate the sophistication of modern algorithmic manipulation]"
    #notes_footnote_link(
      "https://arxiv.org/pdf/2605.26010",
      "The Illusion of Competence: Self-Perceived Digital Literacy and AI Readiness Among European Secondary Students",
      "Rodriguez-Alvarez et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [User Manipulation #science-tag()], group: "user-manipulation")[

  #notes_quote(
    title: "Deep-Research Agents Can Be Poisoned via User-Generated Content",
    details: [\ Zhang et al., 2026],
  )[
    "Recent reporting suggests that marketers are already testing strategies intended to influence AI-generated answers.

    #indent() ... Our findings raise important questions about information integrity in the age of agentic search. #bold[Evidence suggests that users find LLM outputs highly convincing, even when they contain explicit falsehoods], across a variety of contexts."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2605.24245",
      "Deep-Research Agents Can Be Poisoned via User-Generated Content",
      "Zhang et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

== Social Risks

// =====================================================================================================================

#notes_slide(title: [Social Risks #science-tag()], group: "social-risks")[

  #notes_quote(
    title: [How AI and Human Behaviors Shape Psychosocial Effects of Chatbot Use:\ A Longitudinal Randomized Controlled Study],
    details: [\ Fang et al., 2026],
  )[
    "...  AI design choices and user behaviors shape the psychosocial outcomes of prolonged chatbot interactions ...

    #indent() ... the nature of the interaction critically influences outcomes such as #bold[loneliness, socialization with people, emotional dependence on AI chatbots, and problematic usage of AI chatbots]"
    #notes_footnote_link(
      "https://arxiv.org/abs/2503.17473v1",
      "How AI and Human Behaviors Shape Psychosocial Effects of Chatbot Use: A Longitudinal Randomized Controlled Study",
      "Fang et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Social Risks #science-tag()], group: "social-risks")[

  #notes_quote(
    title: "LLMorphism: When humans come to see themselves as language models",
    details: [\ V. Capraro, 2026],
  )[
    "LLMorphism: the biased belief that human cognition works like a large language model.

    #indent() ... #bold[stronger LLMorphic beliefs will increase perceived replaceability of human workers, reduce perceived distinctiveness of human expertise, weaken attributions of agency and moral responsibility], increase reliance on verbal fluency as a proxy for understanding, and reduce attention to embodied, affective, and contextual cues"
    #notes_footnote_link(
      "https://arxiv.org/pdf/2605.05419",
      "LLMorphism: When humans come to see themselves as language models",
      "V. Capraro, arXiv, 2026",
    )
  ]
]


// =====================================================================================================================

#notes_slide(title: [Social Risks #science-tag()], group: "social-risks")[

  #notes_quote(
    title: "Epistemological Fault Lines Between Human and Artificial Intelligence",
    details: [\ Quattrociocchi et al., 2026],
  )[
    "This is precisely why the most salient risk is not reducible to occasional inaccuracy or bias. #bold[The risk is structural: correctness becomes decoupled from the processes of justification that normally sustain it], and thus from the institutional and psychological practices through which #bold[epistemic responsibility is enacted]."
    #notes_footnote_link(
      "https://osf.io/preprints/psyarxiv/c5gh8_v1",
      "Epistemological Fault Lines Between Human and Artificial Intelligence",
      "Quattrociocchi et al., PsyArXiv, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Social Risks #science-tag()], group: "social-risks")[

  #set list(spacing: 40pt)
  - 41.3% of LinkedIn posts are generated by AI.
    #notes_footnote_link(
      "https://gptzero.me/ai-vision",
      "AI Vision",
      "GPTZero, 2026",
    )
  - 71% of images shared on social media globally were AI-generated. #notes_footnote_link(
      "https://artsmart.ai/blog/ai-image-generator-market-statistics/",
      "AI Image Generator Market Statistics: An Analysis",
      "ArtSmart, 2026",
    )
  - 35% of newly published websites were classified as AI-generated or AI-assisted. // @dolezal
  - 59% of TikTok videos and 20% of YouTube videos are AI-generated.  #notes_footnote_link(
      "https://www.kapwing.com/resources/the-tiktok-ai-slop-report/",
      "The TikTok AI Slop Report",
      "Kapwing, May 2026",
    )
]

// =====================================================================================================================

#notes_slide(title: [Social Risks #science-tag()], group: "social-risks")[

  #notes_quote(
    title: "Towards a Post-Social Media Studies",
    details: [\ Törnberg & Rogers, 2026],
  )[
    "an algorithmic shift from social-graph-based to interest-based recommendation, which is #bold[remaking the active 'user' into a passive 'viewer']; the generative AI revolution, which is replacing user-generated content with synthetic media and  #bold[decoupling platforms from any dependence on human participation];"
    #notes_footnote_link(
      "https://osf.io/preprints/socarxiv/6nue7_v1",
      "Towards a Post-Social Media Studies",
      "Törnberg & Rogers, SocArXiv, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Social Risks #science-tag()], group: "social-risks")[

  #v(-20pt)
  #align(center)[
    #image("04.Implications_for_the_Future_part2/chatgpt_books.png", height: 90%)
  ]
  #v(-20pt)
  #notes_unmarked_footnote_link(
    "https://www.economist.com/graphic-detail/2026/06/16/did-ai-write-this-article",
    "Did AI write this article?",
    "The Economist, 2026",
  )
]

// =====================================================================================================================

== Religious

// =====================================================================================================================

#notes_slide(title: [Religious #news-tag()], group: "religious")[

  #notes_quote(
    title: "AI is Becoming a Spiritual Authority, Even Among Practicing Christians",
    details: [\ Barna, May 2026],
  )[
    - "#bold[Practicing Christians express majority-level trust in AI across most domains of personal flourishing] --- and nearly half (48%) say they would trust AI with their spiritual growth.
    - #bold[One in three U.S. adults say AI's spiritual guidance is as trustworthy as a pastor's] --- a share that climbs among younger adults, approaching two in five among Gen Z (39%) and nearly half among Millennials (44%)." #notes_footnote_link(
        "https://www.gallup.com/poll/562435/ai-spiritual-growth.aspx",
        "AI is Becoming a Spiritual Authority, Even Among Practicing Christians",
        "Barna, May 2026",
      )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Religious #news-tag()], group: "religious")[

  #notes_quote(
    title: [First They Built a Secular Apocalypse Belief System.\ Now They Want Religious Authority],
    details: [\ N. Weiss-Blatt, June 2026],
  )[
    First, #bold[AI is a magnet for theological imagination]. AI discourse repeatedly returns to ancient religious motifs: creation, forbidden knowledge, omniscience, apocalypse, and salvation.

    Second, #bold[AI doomerism fills a 'religious-shaped hole.'] For people who left religious upbringing but retain a hunger for a mission-driven community, the AI-risk subculture offers a replacement meaning system.
    #notes_footnote_link(
      "https://www.aipanic.news/p/first-they-built-a-secular-apocalypse",
      "First They Built a Secular Apocalypse Belief System. Now They Want Religious Authority",
      "N. Weiss-Blatt, June 2026",
    )
  ]
]

// =====================================================================================================================

== Political Influence

// =====================================================================================================================

#notes_slide(title: [Political Influence #science-tag()], group: "political-influence")[

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
]

// =====================================================================================================================

#notes_slide(title: [Political Influence #science-tag()], group: "political-influence")[

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

#notes_slide(title: [Political Influence #science-tag()], group: "political-influence")[

  #notes_quote(title: "State media control influences large language models", details: [\ Nature, 2026])[
    "prompting models in Chinese generates more positive responses about China's institutions and leaders than do the same queries in English. The combination of influence and persuasive potential across languages suggests the troubling conclusion that #bold[states and powerful institutions have increased strategic incentives to leverage media control in the hopes of shaping LLM output]."
    #notes_footnote_link(
      "https://www.nature.com/articles/s41586-026-10506-7",
      "State media control influences large language models",
      "Waight et al., Nature, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Political Influence #science-tag()], group: "political-influence")[

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
<p3e>
