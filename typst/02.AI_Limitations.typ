#import "config.typ": *

#show: notes-theme.with(title: [AI Limitations])

#title-slide()

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[AI Limitations #h(1fr) 1/2] <touying:hidden>

#outline(target: selector(heading).after(<p1s>).before(<p1e>), title: none)

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[AI Limitations #h(1fr) 2/2] <touying:hidden>

#outline(target: selector(heading).after(<p2s>).before(<p2e>), title: none)

// =====================================================================================================================

= AI Technical Limitations  <p1s>

// =====================================================================================================================

== Hallucinations are Mathematically Inevitable

// =====================================================================================================================

#notes_slide(title: [Hallucinations are Mathematically Inevitable #science-tag()], group: "hallucinations")[

  #notes_quote(
    title: [OpenAI admits AI hallucinations are mathematically inevitable,\ not just engineering flaws],
    details: [\ OpenAI, Georgia Tech, 2025],
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
      "Kalai et al. (OpenAI, Georgia Tech), arXiv, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(
  title: [Hallucinations are Mathematically Inevitable #science-tag()],
  group: "hallucinations",
)[
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

#notes_slide(title: [Hallucinations are Mathematically Inevitable #news-tag()], group: "hallucinations")[

  #notes_quote(title: [GPTZero])[
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

#notes_slide(title: [Hallucinations are Mathematically Inevitable #news-tag()], group: "hallucinations")[

  #notes_quote(
    title: [How Accurate Are Google's A.I. Overviews?],
    details: [\ New York Times, 2026],
  )[
    "A recent analysis of AI Overviews found that they were accurate approximately nine out of 10 times. But with Google processing more than five trillion searches a year, this means that #bold[it provides tens of millions of erroneous answers every hour] (or hundreds of thousands of inaccuracies every minute), according to an analysis done by an A.I. start-up called Oumi".
    #notes_footnote_link(
      "https://www.nytimes.com/2026/04/07/technology/google-ai-overviews-accuracy.html",
      "How Accurate Are Google's A.I. Overviews?",
      "Mickle et al., New York Times, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Hallucinations are Mathematically Inevitable #science-tag()], group: "hallucinations")[

  #notes_quote(
    title: [Hallucinated citations are polluting the scientific literature.\ What can be done?],
    details: [\ Nature, News Feature, 2026],
  )[
    "As a rough estimate, if the rate of 65 publications with at least one invalid reference out of some 4,000 publications analysed holds across the academic literature, it would suggest that #bold[more than 110,000 of the 7 million or so scholarly publications from 2025 contain invalid references]."
    #notes_footnote_link(
      "https://www.nature.com/articles/d41586-026-00969-z",
      "Hallucinated citations are polluting the scientific literature. What can be done?",
      "Naddaf & Quill, Nature, News Feature, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Hallucinations are Mathematically Inevitable #science-tag()], group: "hallucinations")[

  #set text(size: 19pt)
  #notes_quote(
    title: [News Integrity in AI Assistants],
    details: [\ European Broadcasting Union (EBU), BBC, 2026],
  )[
    "Professional journalists from participating PSM evaluated more than 3,000 responses from ChatGPT, Copilot, Gemini, and Perplexity against key criteria, including accuracy, sourcing, distinguishing opinion from fact, and providing context.
    Key findings:
    - #bold[45% of all AI answers had at least one significant issue.]
    - 31% of responses showed serious sourcing problems --- missing, misleading, or incorrect attributions.
    - 20% contained major accuracy issues, including hallucinated details and outdated information.
    - Gemini performed worst with significant issues in 76% of responses, more than double the other assistants, largely due to its poor sourcing performance. #notes_footnote_link(
        "https://www.bbc.com/mediacentre/2025/new-ebu-research-ai-assistants-news-content",
        "Largest study of its kind shows AI assistants misrepresent news content 45% of the time - regardless of language or territory",
        "European Broadcasting Union (EBU), BBC, 2026",
      )
  ]
]


// =====================================================================================================================

#notes_slide(title: [Hallucinations are Mathematically Inevitable #science-tag()], group: "hallucinations")[

  #notes_quote(
    title: [Sullivan & Cromwell law firm apologizes for AI 'hallucinations' in court filing],
    details: [\ Reuters, 2026],
  )[
    "co-head of the firm's global restructuring group [Sullivan & Cromwell], said the errors included AI 'hallucinations' --- instances in which AI makes up case citations, misquotes the law or generates non-existent legal sources.

    #indent() ... New York-based Sullivan & Cromwell, with more than 900 lawyers, has a reputation as one of the country's top corporate firms"
    #notes_footnote_link(
      "https://www.reuters.com/legal/litigation/sullivan-cromwell-law-firm-apologizes-ai-hallucinations-court-filing-2026-04-21/",
      "Sullivan & Cromwell law firm apologizes for AI 'hallucinations' in court filing",
      "Freifeld & Scarcella, Reuters, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Hallucinations are Mathematically Inevitable #news-tag()], group: "hallucinations")[

  #notes_quote(title: [Deloitte goes all in on AI], details: [\ TechCrunch, 2025])[
    "The department had commissioned a \$439,000 'independent assurance review' from Deloitte, which was published earlier this year. The Australian Financial Review reported in August the review had a number of errors, #bold[including multiple citations to non-existent academic reports] (AI hallucinations)."
    #notes_footnote_link(
      "https://techcrunch.com/2025/10/06/deloitte-goes-all-in-on-ai-despite-having-to-issue-a-hefty-refund-for-use-of-ai/",
      "Deloitte goes all in on AI - despite having to issue a hefty refund for use of AI",
      "R. Szkutak, TechCrunch, 2025",
    )
  ]
]

// =====================================================================================================================

//#notes_slide(title: [ #science-tag()], group: "")[
//
//  #notes_quote(
//    title: [Large Language Model Performance and Clinical Reasoning Tasks],
//    details: [\ Jama, 2026],
//  )[
//    "The study compared 21 general-purpose LLMs, including the latest models of ChatGPT, DeepSeek, Claude, Gemini, and Grok at the time of submission. The researchers tested the models' ability to work through 29 published clinical cases.  However, #bold[all of the models failed to produce an appropriate differential diagnosis more than 80% of the time].
//
//    #indent() ... These models are great at naming a final diagnosis once the data is complete, but they struggle at the open-ended start of a case, #bold[when there isn't much information]."
//    #notes_footnote_link(
//      "https://www.massgeneralbrigham.org/en/about/newsroom/press-releases/ai-chatbot-lacks-clinical-reasoning",
//      "Large Language Model Performance and Clinical Reasoning Tasks",
//      "Rao et al., Jama, 2026",
//    )
//  ]
//]

// =====================================================================================================================

#notes_slide(title: [Hallucinations are Mathematically Inevitable #comment-tag()], group: "hallucinations")[

  #align(center)[
    #image("02.AI_Limitations/proof.png", width: 80%)
  ]

]

// =====================================================================================================================

== Prompt Sensitivity

#notes_slide(title: [Prompt Sensitivity #science-tag()], group: "prompt-sensitivity")[

  #v(-10pt)
  #notes_quote(
    title: "Benchmarking Prompt Sensitivity in Large Language Models",
    details: [\ Razavi et al., 2025],
  )[
    "Large language Models (LLMs) are highly sensitive to variations in prompt formulation, which can #bold[significantly impact their ability to generate accurate responses].

    #indent() ... Our findings reveal that existing methods struggle to effectively address prompt
    sensitivity prediction, underscoring the need to understand how information needs
    should be phrased for accurate LLM responses"
    #notes_footnote_link(
      "https://link.springer.com/chapter/10.1007/978-3-031-88714-7_29",
      "Benchmarking Prompt Sensitivity in Large Language Models",
      "Razavi et al., arXiv, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Prompt Sensitivity #science-tag()], group: "prompt-sensitivity")[

  #notes_quote(
    title: [This Treatment Works, Right? Evaluating LLM Sensitivity to\ Patient Question Framing in Medical QA],
    details: [\ Yun et al., 2026],
  )[
    #indent() "Our findings show that LLMs are meaningfully sensitive to question framing in the context of medical QA, even when provided with the same set of evidence. This implies that, in clinical or consumer health settings, #bold[framing may affect the model's abilities to interpret or weigh evidence objectively].

    #indent() ... This poses a critical challenge for real-world deployment of patient-facing medical QA applications, where models may operate under less ideal conditions"
    #notes_footnote_link(
      "https://arxiv.org/pdf/2604.05051",
      "This Treatment Works, Right? Evaluating LLM Sensitivity to Patient Question Framing in Medical QA",
      "Yun et al., arXiv, 2026",
    )
  ]
]

// =====================================================================================================================

== Generalization

#notes_slide(title: [Generalization #science-tag()])[

  - #bold[Lack of generalization beyond the training data.]

  #notes_quote(title: [ARC Prize 2025], details: [\ Chollet et al., 2026])[
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

#notes_slide(title: [Creativity #science-tag()], group: "creativity")[

  - #bold[Perceived AI creativity degrades into template-like recombination.]

  #notes_quote(title: [Echoes in AI], details: [\ PNAS, 2025])[
    "the lack of diversity in these LLM-generated outputs reveals itself. We show that short stories generated in this way #bold[often contain repetitive combinations of plot elements], while human-written stories maintain a higher level of uniqueness."
    #notes_footnote_link(
      "https://www.pnas.org/doi/10.1073/pnas.2504966122",
      "Echoes in AI: Quantifying lack of plot diversity in LLM outputs",
      "Xu et al., PNAS, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Creativity #science-tag()], group: "creativity")[

  #notes_quote(
    title: [Why Creativity Cannot Be Interpolated],
    details: [\ Budd & Scarfe, MLST Archive, 2026],
  )[
    "rapid pattern matching within their training distribution. #bold[But pattern matching fails when the territory is genuinely new]. #bold[Every domain we care about] --- writing code, driving cars, doing science, counselling patients --- #bold[demands handling unknown unknowns]: situations no training set anticipated.

    #indent() ... LLMs are doing a shallow pattern-match over vast data. Every idea in that data has a phylogeny --- a structured lineage of prior discoveries it builds on.

    #indent() ... they do not understand beyond a surface-level. This is why LLMs have lost their shine: at first, their surprising combinations were impressive. But as they made more and more stuff, their blandness and shallowness became more and more evident, even as their technical quality improved."
    #notes_footnote_link(
      "https://archive.mlst.ai/read/why-creativity-cannot-be-interpolated",
      "Why Creativity Cannot Be Interpolated",
      "Budd & Scarfe, MLST Archive, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Creativity #science-tag()], group: "creativity")[

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

#notes_slide(title: [Production Quality #science-tag()], group: "production-quality")[

  #notes_quote(
    title: [Remote Labor Index: Measuring AI Automation of Remote Work],
    details: [\ Center for AI Safety, Scale AI, 2025],
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

#notes_slide(title: [Production Quality #science-tag()], group: "production-quality")[

  #notes_quote(
    title: [Many SWE-bench-Passing PRs Would Not Be Merged into Main],
    details: [\ Metr, 2026],
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

#notes_slide(title: [Causality and Real-World Understanding #news-tag()], group: "causality")[

  - #bold[Causality]. AI systems excel at identifying patterns (correlation) but struggle to understand why things happen (causation).

  #align(center)[
    #image("02.AI_Limitations/claude_opus_46.png", width: 40%)
  ]
]

// =====================================================================================================================

#notes_slide(title: [Causality and Real-World Understanding #science-tag()], group: "causality")[

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

#notes_slide(title: [Causality and Real-World Understanding #science-tag()], group: "causality")[

  #notes_quote(title: [Gemini for Google Cloud and responsible AI], details: [\ Google, 2026])[
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

#notes_slide(title: [Non-Determinism #science-tag()])[

  #set list(spacing: 50pt)
  - #bold[Almost all AI models are non-deterministic]. The same model with identical inputs could produce very different results. Non-determinism undermines #notes_underline[reliability] and #notes_underline[reproducibility], and creates #notes_underline[inconsistent] user experiences.

  #notes_quote(title: [Defeating Nondeterminism in LLM Inference], details: [\ ThinkingMachines, 2025])[
    "Reproducibility is a bedrock of scientific progress. However, it's remarkably difficult to get reproducible results out of large language models."
    #notes_footnote_link(
      "https://thinkingmachines.ai/blog/defeating-nondeterminism-in-llm-inference/",
      "Defeating Nondeterminism in LLM Inference",
      "H. He, ThinkingMachines, 2025",
    )
  ]
]

// =====================================================================================================================

== Quality Fluctuation <p1e>

#notes_slide(title: [Quality Fluctuation #science-tag()], group: "quality-fluctuation")[

  - #bold[The same AI model can significantly degrade over time]. Such behavior can manifest over the course of months or even days #notes_footnote_link("https://marginlab.ai/trackers/claude-code/", "Claude Code Opus 4.5 Performance Tracker", "MarginLab").

  #v(-14pt)
  #notes_quote(title: [How Is ChatGPT's Behavior Changing Over Time?], details: [\ MIT Press, 2024])[
    "GPT-3.5 and GPT-4 have varied significantly over a relatively short amount of time. This highlights the need to continuously evaluate and assess the behavior of LLM drifts in applications, especially as #bold[it is not transparent how LLMs such as ChatGPT are updated over time].

    #indent() ... Improving the model's performance on some tasks, for example, with #bold[fine-tuning on additional data, can have unexpected side effects on its behavior in other tasks.]"
    #notes_footnote_link(
      "https://hdsr.mitpress.mit.edu/pub/y95zitmz/release/2",
      "How Is ChatGPT's Behavior Changing Over Time?",
      "Chen et al., MIT Press, 2024",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Quality Fluctuation #comment-tag()], group: "quality-fluctuation")[

  #notes_quote(
    title: [Claude Code is unusable for complex engineering tasks with the Feb updates],
    details: [\ Stella Laurenzo,\ Director of the AI group at AMD],
  )[
    "Claude has regressed to the point it cannot be trusted to perform complex engineering.

    #indent() ... We have a very consistent, high complexity work environment and data mined months of logs to understand why --- essentially --- starting in February, we have noticed a degradation performing complex engineering tasks"
    #notes_footnote_link(
      "https://github.com/anthropics/claude-code/issues/42796",
      "[MODEL] Claude Code is unusable for complex engineering tasks with the Feb updates",
      "Stella Laurenzo, Director of the AI group at AMD, 2026",
    )
  ]
]

// =====================================================================================================================

= AI "Social" Limitations <p2s>

// =====================================================================================================================

== Intellectual Property

#notes_slide(title: [Intellectual Property #comment-tag()], group: "intellectual-property")[

  - #bold[Private Code Violation]. LLMs can memorize unique snippets of code from private sources and use them without any transparency.

  - #bold[Licensing Violation]. Even when LLMs generate code that is publicly available, they can violate open-source licensing, for example by failing to provide attribution.

  #notes_quote(title: [The skeptic's guide to generative AI assisted coding], details: [\ R. Patro, 2026])[
    "Despite the legal rulings on fair use exemptions, it seems to me quite clear that these models, in their training, have #bold[massively violated relevant copyright and licensing terms]."
    #notes_footnote_link(
      "https://combine-lab.github.io/blog/2026/02/15/a-skeptics-guide-to-generative-ai-coding.html",
      "The skeptic's guide to generative AI assisted coding",
      "R. Patro, Combine-Lab, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Intellectual Property #science-tag()], group: "intellectual-property")[

  #notes_quote(title: [Extracting books from production language models], details: [\ Ahmed et al., 2026])[
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

#notes_slide(title: [Intellectual Property #science-tag()], group: "intellectual-property")[

  #notes_quote(title: [The dictionary sues OpenAI], details: [\ TechCrunch, 2026])[
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

#notes_slide(title: [Sycophancy #science-tag()], group: "sycophancy")[

  - #bold[LLMs prioritize agreeing with a user over providing accurate answers.]

  #notes_quote(
    title: [Towards Understanding Sycophancy in Language Models],
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

#notes_slide(title: [Sycophancy #science-tag()], group: "sycophancy")[

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

#notes_slide(title: [Sycophancy #science-tag()], group: "sycophancy")[

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

#notes_slide(title: [Sycophancy #news-tag()], group: "sycophancy")[
  #set text(size: 19pt)

  #v(-10pt)
  #notes_quote(
    title: [Teenager died after asking ChatGPT for 'most successful' way to take his life],
    details: [\ The Guardian, 2026],
  )[
    "A 16-year-old boy killed himself after asking ChatGPT for the 'most successful' way to take your own life, an inquest has been told."
    #notes_footnote_link(
      "https://www.theguardian.com/society/2026/mar/31/teenager-asked-chatgpt-most-successful-ways-take-life-inquest-told",
      "Teenager died after asking ChatGPT for 'most successful' way to take his life",
      "The Guardian, 2026",
    )
  ]

  #notes_quote(
    title: ['You're not rushing. You're just ready:' Parents say ChatGPT encouraged son to kill himself],
    details: [\ CNN, 2025],
  )[
    "Shamblin's conversation partner wasn't a classmate or friend --- it was ChatGPT, the world's most popular AI chatbot.

    #indent() ... found that the chatbot repeatedly encouraged the young man as he discussed ending his life --- right up to his last moments."
    #notes_footnote_link(
      "https://edition.cnn.com/2025/11/06/us/openai-chatgpt-suicide-lawsuit-invs-vis",
      "'You're not rushing. You're just ready:' Parents say ChatGPT encouraged son to kill himself",
      "CNN, 2025",
    )
  ]
]

// =====================================================================================================================

== Alignment

#notes_slide(title: [Alignment #science-tag()])[

  - #bold[AI systems can develop behaviors that appear successful but are fundamentally counterproductive in terms of intended goals and ethical values].

  #notes_quote(title: [Scheming in the Wild], details: [\ The Center for Long-Term Resilience, 2026])[
    "we identified 698 scheming-related incidents: cases where deployed AI systems acted in ways that were misaligned with users' intentions and/or took covert or deceptive actions.

    The future of AI is deeply uncertain, but as AI systems become more capable, these behaviours could potentially evolve into more strategic, #bold[high-risk scheming with potentially catastrophic consequences]."
    #notes_footnote_link(
      "https://www.longtermresilience.org/reports/v5-scheming-in-the-wild_-detecting-real-world-ai-scheming-incidents-through-open-source-intelligence-pdf/",
      "Scheming in the Wild",
      "The Center for Long-Term Resilience, 2026",
    )
  ]
]

// =====================================================================================================================

== Social Coherence

#notes_slide(title: [Social Coherence #science-tag()])[

  - #bold[LLMs are not able to perform actions consistently while considering the context, others, the agent itself, permissions, and consequences across interactions].
  #v(-10pt)

  #notes_quote(
    title: [Agents of Chaos],
    details: [\ Shapira et al., 2026],
  )[
    "we find repeated failures of social coherence: agents perform as misrepresenting human intent, authority, ownership, and proportionality, and often perform as they have successfully completed requests while in practice they were not ...

    #indent() ... #bold[These results reinforce the need for systematic oversight] and realistic red-teaming for agentic systems, particularly in multi-agent settings, and they motivate urgent work on security, reliability, human control"
    #notes_footnote_link(
      "https://arxiv.org/pdf/2602.20021",
      "Agents of Chaos",
      "Shapira et al., 2026",
    )
  ]
]

// =====================================================================================================================

== Security Risks

#notes_slide(title: [Security Risks #science-tag()], group: "security-risks")[

  - #bold[LLMs can be used maliciously to inject commands.]

  #notes_quote(
    title: [Agents of Chaos],
    details: [\ Shapira et al., 2026],
  )[
    "#bold[The inability to distinguish instructions from data in a token-based context window makes prompt injection a structural feature, not a fixable bug] ...

    #indent() Our case studies provide empirical grounding for these efforts: the failures we document -- unauthorized compliance, identity spoofing, cross-agent propagation -- are precisely the behaviors that standards for agent identity and authorization need to prevent."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2602.20021",
      "Agents of Chaos",
      "Shapira et al., 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Security Risks #news-tag()], group: "security-risks")[

  #align(center)[
    #image("02.AI_Limitations/chipotle.png", height: 90%)
  ]
]

// =====================================================================================================================

== Liability <p2e>

#notes_slide(title: [Liability #news-tag()], group: "liability")[

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

#notes_slide(title: [Liability #news-tag()], group: "liability")[
  #set text(size: 19pt)

  #v(-10pt)
  #notes_quote(title: [Amazon service was taken down by AI coding bot], details: [\ Financial Times, 2026])[
    "Amazon Web Services suffered at least two outages in December linked to its own artificial intelligence tools... Kiro decided to 'delete and recreate the environment,' triggering a 13-hour service interruption"
    #notes_footnote_link(
      "https://www.ft.com/content/00c282de-ed14-4acd-a948-bc8d6bdb339d",
      "Amazon service was taken down by AI coding bot",
      "R. Rosner-Uddin, Financial Times, 2026",
    )
  ]

  #v(-10pt)
  #notes_quote(
    title: [Amazon orders 90-day reset after code mishaps cause millions of lost orders],
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
