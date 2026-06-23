#import "config.typ": *

#show: notes-theme.with(title: [Software Development\ in the Age of AI], subtitle: "Implications of AI-Generated Code")

#title-slide()

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Software Development in the Age of AI #h(1fr) 1/3] <touying:hidden>

#show outline.entry.where(level: 1): set block(above: 50pt)
#outline(title: none)

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Software Development in the Age of AI #h(1fr) 2/3] <touying:hidden>

#outline(title: none)

// =====================================================================================================================

= Software Developer Employment

// =====================================================================================================================

#notes_slide(title: [AI Replacing Developers Misconception], group: "replacing-developers")[

  _Despite the daily dystopian and gloomy predictions on social media and news sites, AI will not replace software developers. In fact, demand for software developers is and will remain strong._

  #v(10pt)
  Layoffs and the decline in entry-level job postings have been driven by #bold[massive capital spending on infrastructure] and economic uncertainty, disproportionately affecting early-career roles.
  _The industry is effectively trading junior headcount for compute capacity_.
  #notes_footnote_link(
    "https://www.goldmansachs.com/insights/articles/why-ai-companies-may-invest-more-than-500-billion-in-2026",
    "Why AI Companies May Invest More than $500 Billion in 2026",
    "Goldman Sachs",
  )#super[,] #notes_footnote_link(
    "https://www.fastcompany.com/91435192/chatgpt-llm-openai-jobs-amazon",
    "AI isn't replacing jobs. AI spending is",
    "Fast Company, 2025",
  )#super[,]
  #notes_footnote_link(
    "https://www.mckinsey.com/industries/technology-media-and-telecommunications/our-insights/the-cost-of-compute-a-7-trillion-dollar-race-to-scale-data-centers",
    "The cost of compute: A $7 trillion race to scale data centers",
    "McKinsey & Company, 2025",
  )
]

// =====================================================================================================================

#notes_slide(title: [AI Replacing Developers Misconception], group: "replacing-developers")[

  A Harvard Business School study #notes_footnote_link("https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5425555", "Generative AI as Seniority-Biased Technological Change", "Social Science Research Network, 2025") found that at firms adopting AI, junior employment drops significantly while senior employment remains flat. The researchers warn that this is a _"defensive move"_ that boosts short-term efficiency but #bold[risks a long-term talent crisis], as fewer human experts will be trained to supervise the AI systems of the future.
]

// =====================================================================================================================

#notes_slide(title: [AI and Software Employment #science-tag()], group: "software-employment")[
  #set text(size: 22pt)

  #notes_quote(title: "Shaping AI's Impact on Billions of Lives")[
    "The impact of productivity gains on jobs depends on whether the demand for goods produced by that work is #bold[elastic] or #bold[inelastic]. If demand is #underline(offset: 3pt)[inelastic], productivity gains mean jobs will be lost...

    ... If product demand is sufficiently #underline(offset: 3pt)[elastic], productivity-enhancing technology will #underline(offset: 3pt)[increase industry employment]\"
    #notes_footnote_link(
      "https://arxiv.org/pdf/2412.02730",
      "Shaping AI's Impact on Billions of Lives",
      "arXiv, 2025 / Communications of the ACM, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [AI and Software Employment #science-tag()], group: "software-employment")[

  #bold[Software development has #notes_underline[elastic] demand]. It offers great potential and opportunities, driven by its integration into every aspect of life and business and by rapid technological evolution.
  #v(10pt)

  #set list(spacing: 30pt)
  - The US Bureau of Labor Statistics predicts a #bold[25% increase] in software developers over the next decade #notes_footnote_link("https://www.bls.gov/ooh/Computer-and-Information-Technology/Software-developers.htm", "Employment Projections, 2025-2035", "US Bureau of Labor Statistics, 2025").
  - The World Economic Forum lists software and application developers among the #bold[fastest-growing jobs] in the 2025-2030 timeframe #notes_footnote_link("https://www.weforum.org/publications/the-future-of-jobs-report-2025/", "Future of Jobs Report, 2025-2030", "World Economic Forum, 2025").

  - The global software market size is projected to reach \$1.4 trillion by 2030, growing at a compound annual #bold[growth rate] (CAGR) of #bold[+11.3%] #notes_footnote_link("https://www.grandviewresearch.com/industry-analysis/software-market-report", "Software Market (2025 - 2030)", "Grand View Research, 2025").
]

// =====================================================================================================================

#notes_slide(title: [AI and Software Employment #science-tag()], group: "software-employment")[

  - Engineering headcount changes since 2022: Meta #bold[+19%], Google #bold[+16%], Apple #bold[+13%] #notes_footnote_link("https://underdog.io/blog/software-engineer-job-market-2025", "Software Engineer Job Market 2025", "Underdog.io, 2025").

  #notes_quote(title: "AI exuberance: Economic upside, stock market downside")[
    \~ Jobs with high exposure to AI have seen #notes_underline[greater wage] and #notes_underline[stronger job growth] than jobs minimally exposed to AI
    #notes_footnote_link("https://corporate.vanguard.com/content/dam/corp/research/pdf/isg_vemo_2026.pdf", "AI exuberance: Economic upside, stock market downside", "Vanguard economic and market outlook for 2026").
  ]
]

// =====================================================================================================================

#notes_slide(title: [AI and Software Employment #news-tag()], group: "software-employment")[

  #v(-18pt)
  #align(center)[
    #image("05.Software_Development_part1/capex_vs_people.png", width: 65%)
  ]
  #v(-20pt)
  #notes_unmarked_footnote_link(
    "https://www.linkedin.com/posts/prasad-setty_meta-cut-equity-awards-for-most-employees-activity-7432847109457874944-vZRS/",
    "When Capex Surpasses People",
    "Prasad Setty, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [AI and Software Employment #science-tag()], group: "software-employment")[

  #text(
    size: 18pt,
  )[#bold[Occupations with the highest projected total change in employment, 2024-2034]]#notes_footnote_link(
    "https://usafacts.org/articles/what-are-the-fastest-growing-professions-in-america/",
    "What are the fastest-growing professions in America?",
    "USAFacts, 2025",
  )
  #box(width: 0pt, height: 0pt)[#move(
    dx: 120pt,
    dy: 100pt,
    [#text(fill: blue)[➜]],
  )]
  #align(center)[
    #image("05.Software_Development_part1/occupation_2034.png", height: 80%)
  ]
]

// =====================================================================================================================

#notes_slide(title: [AI and Software Employment #news-tag()], group: "software-employment")[

  #align(center)[
    #image("05.Software_Development_part1/software_employment_2026.png", height: 82%)
  ]
  #notes_unmarked_footnote_link(
    "https://www.ft.com/content/7325e967-5f4e-40b1-af3f-7d2351781843?syn-25a6b1a6=1",
    "The AI Shift: Will software engineers survive agentic AI?",
    "Sarah & Murdoch, Financial Times, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [AI and Software Employment #news-tag()], group: "software-employment")[
  #align(center)[
    #image("05.Software_Development_part1/trueup_2026.png", height: 82%)
  ]
  #notes_unmarked_footnote_link(
    "https://trueup.io/engineering/reports",
    "Engineering Job Report, April 2026",
    "TrueUp, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: [AI and Software Employment #science-tag()], group: "software-employment")[

  #notes_quote(
    title: "Redefining the Software Engineering Profession for AI",
    details: [\ Communications of the ACM, 2026],
  )[
    "Without the hiring of early-in-career developers, the profession's talent pipeline will collapse, and organizations will face a future without the next generation of experienced engineers."
    #notes_footnote_link(
      "https://dl.acm.org/doi/pdf/10.1145/3779312",
      "Redefining the Software Engineering Profession for AI",
      "Russinovich & Hanselman, Communications of the ACM, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [AI and Software Employment #science-tag()], group: "software-employment")[

  #notes_quote(
    title: [Ten takeaways from the AI Engineering Report 2026:\ The Acceleration Whiplash],
    details: [\ Faros Research, 2026],
  )[
    "Every organization cutting engineering headcount on the basis of AI output gains should read this report. The AI engineering impact data shows that output is up. It also shows that #bold[the work required to ensure that output is safe, correct, and maintainable has not decreased. It has increased substantially. ]"
    #notes_footnote_link(
      "https://www.faros.ai/blog/ai-acceleration-whiplash-takeaways",
      "Ten takeaways from the AI Engineering Report 2026: The Acceleration Whiplash",
      "Faros Research, April 2026",
    ) <faros_research>
  ]
]

// =====================================================================================================================

#notes_slide(title: [AI and Software Employment #comment-tag()], group: "software-employment")[

  #notes_quote(
    title: "What is agentic engineering?",
    details: [\ S. Willison, 2026],
  )[
    "Now that we have software that can write working code, #bold[what is there left for us humans to do?]

    #indent() #bold[The answer is so much stuff.]

    #indent() Writing code has never been the sole activity of a software engineer. The craft has always been figuring out what code to write. Any given software problem has dozens of potential solutions, each with their own tradeoffs. Our job is to navigate those options and find the ones that are the best fit for our unique set of circumstances and requirements."
    #notes_footnote_link(
      "https://simonwillison.net/guides/agentic-engineering-patterns/what-is-agentic-engineering/",
      "What is agentic engineering?",
      "S. Willison, 2026",
    )
  ]
]

// =====================================================================================================================

= Productivity

#notes_slide(title: [Productivity #science-tag()], group: "productivity")[

  #align(center)[
    #image("05.Software_Development_part1/productivity.png", width: 90%)
  ]
]

// =====================================================================================================================

#notes_slide(title: [Productivity #science-tag()], group: "productivity")[

  #align(center)[
    #grid(
      columns: 2,
      gutter: 30pt,
      image("05.Software_Development_part1/new_apps.png", width: 100%),
      image("05.Software_Development_part1/app_rating.png", width: 100%),
    ),
  ]
]

// =====================================================================================================================

#notes_slide(title: [Productivity #science-tag()], group: "productivity")[

  #notes_quote(
    title: "Writing Code vs. Shipping Code: Productivity Effects Across Generations of AI Coding Tools",
    details: [\ National Bureau of Economic Research, 2026],
  )[
    "AI coding tools produce increasingly large task-level productivity effects. Yet these gains attenuate sharply across the production hierarchy: #bold[sync agents lead to a 741% increase in lines of code and a 65% increase in pull requests, but releases rise by only 20%].

    #indent() ... Across four major marketplaces, #bold[new application creation has accelerated] since mid-2025, but total usage within the first three months has not risen, and #bold[the share of new applications that fail to reach even a modest audience has increased]."
    #notes_footnote_link(
      "https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/",
      "Writing Code vs. Shipping Code: Productivity Effects Across Generations of AI Coding Tools",
      "Demirer et al., National Bureau of Economic Research, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Productivity #science-tag()], group: "productivity")[

  #notes_quote(
    title: [Ten takeaways from the AI Engineering Report 2026:\ The Acceleration Whiplash],
    details: [\ Faros Research, 2026],
  )[
    "Epics completed per developer are up 66%. Task throughput per developer is up 33.7%. PR merge rate per developer is up 16.2%. These numbers represent real delivery acceleration...

    But the throughput numbers have an asterisk..."
    @faros_research
  ]
]

// =====================================================================================================================

#notes_slide(title: [Productivity #science-tag()], group: "productivity")[

  #v(-15pt)
  #align(center)[
    #image("05.Software_Development_part1/mckinsey_productivity.png", width: 86%)
  ]
  #v(-15pt)

  #notes_unmarked_footnote_link(
    "https://www.mckinsey.com/~/media/mckinsey/business%20functions/mckinsey%20digital/our%20insights/unleashing%20developer%20productivity%20with%20generative%20ai/unleashing-developer-productivity-with-generative-ai.pdf",
    "Unleashing developer productivity with generative AI",
    "McKinsey, 2023",
  )
]

// =====================================================================================================================

= Deskilling

#notes_slide(title: [Deskilling], group: "deskilling")[

  #notes_quote(
    title: "7 Questions with Jeremy Howard on Open Source AI and Agents",
    details: [\ Jeremy Howard, 2026],
  )[
    "#bold[People who go all in on AI agents now are guaranteeing their obsolescence]. If you outsource all your thinking to computers, you stop upskilling, learning, and becoming more competent."
    #notes_footnote_link(
      "https://www.youtube.com/watch?v=zDkHJDgefyk",
      "7 Questions with Jeremy Howard (Answer.ai, fast.ai) on Open Source AI and Agents",
      "Jeremy Howard, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Deskilling], group: "deskilling")[

  #notes_quote(
    title: "How AI assistance impacts the formation of coding skills",
    details: [\ Anthropic, 2026],
  )[
    "incorporating AI aggressively into the workplace, particularly with respect to software engineering, comes with trade-offs.

    Given time constraints and organizational pressures, junior developers or other professionals may #bold[rely on AI to complete tasks as fast as possible at the cost of skill development] --- and notably the ability to debug issues when something goes wrong."
    #notes_footnote_link(
      "https://www.anthropic.com/research/AI-assistance-coding-skills",
      "How AI assistance impacts the formation of coding skills",
      "Anthropic, 2026",
    )
  ]
]

// =====================================================================================================================

= AI Addiction

#notes_slide(title: [AI Addiction])[

  #notes_quote(
    title: "Agentic Coding is a Trap",
    details: [\ Lars Faye, 2026],
  )[
    "When I was browsing LinkedIn during the Claude outage that occurred a bit ago, I noticed numerous posts highlighting that certain developers and engineering teams were at a standstill. Their workflows, their own coding abilities, had already reached a point where they were largely dependent on these vendors. #bold[What used to be a skill that they could execute with just a keyboard and text editor suddenly required a subscription to an AI model provider.]"
    #notes_footnote_link(
      "https://larsfaye.com/articles/agentic-coding-is-a-trap",
      "Agentic Coding is a Trap",
      "Lars Faye, 2026",
    ) <agentic_coding_is_a_trap>
  ]
]

// =====================================================================================================================

= Technical Debt

#notes_slide(title: [Technical Debt], group: "technical-debt")[

  - #bold[AI-assisted code has contributed to a measurable decline in code quality.] Code generated by LLMs without engineering supervision tends to deteriorate quickly over time due to duplicated logic, inconsistent naming, and poor architectural organization. This translates into rising maintenance costs, lower developer satisfaction, and fragile systems.

  #align(center)[
    #image("05.Software_Development_part1/messy_codebase.jpg", width: 40%)
  ]
]

// =====================================================================================================================

#notes_slide(title: [Technical Debt #science-tag()], group: "technical-debt")[

  #notes_quote(
    title: [Ten takeaways from the AI Engineering Report 2026:\ The Acceleration Whiplash],
    details: [\ Faros Research, 2026],
  )[
    "#bold[Code churn], the ratio of lines deleted to lines added for merged code in a given quarter, #bold[has increased 861% under high AI adoption]. At nearly 10 times the prior rate, #bold[significantly more code is being removed relative to what is being added.]

    #indent() #bold[The incidents-to-PR ratio is up 242.7%] as teams move from low to high AI adoption. ... For every PR merged, incidents are occurring at more than three times the rate relative to the low AI adoption baseline.

    #indent() #bold[bugs per developer has risen to 54%]. ... More AI-generated code in the codebase correlates with more bugs per developer, and that relationship is strengthening as adoption deepens."
    @faros_research
  ]
]

// =====================================================================================================================

#notes_slide(title: [Technical Debt #science-tag()], group: "technical-debt")[

  #v(-10pt)
  #set text(size: 19pt)
  #notes_quote(title: "GitClear", details: [\ AI Copilot Code Quality, 2025])[
    "#bold[The share of copy/pasted lines surged] from 8.3% in 2020 to 12.3% in 2024, a 48% relative increase.

    #indent() The proportion of new code that was revised within two weeks of its initial commit grew from 3.1% in 2020 to 5.7% in 2024, indicating a #bold[rise in premature or low-quality commits].

    #indent() The percentage of revised code that was originally written more than a month prior dropped from 30% in 2020 to just 20% in 2024. This suggests that #bold[developers are spending more time modifying recently written AI-generated code rather than improving or refactoring] legacy systems."
    #notes_footnote_link(
      "https://www.gitclear.com/ai_assistant_code_quality_2025_research",
      "AI Copilot Code Quality: 2025 Look Back at 12 Months of Data",
      "GitClear, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Technical Debt #science-tag()], group: "technical-debt")[

  #notes_quote(
    title: "GitClear",
    details: [\ AI Coding Tools Attract Top Performers --- But Do They  Create Them?, 2026],
  )[
    "Relative code churn (refactoring) far outpaces increases in productive output. Regular AI users averaged 9.4x higher code churn than their non-AI counterparts, #bold[which is 2.2x greater than their composite productivity increase].

    #v(-20pt)
    - Code Review Minutes 3.1x
    - Copy/Paste Lines 4.1x
    - Churn Lines 9.4x" #notes_footnote_link(
        "https://gitclear-public.s3.us-west-2.amazonaws.com/Developer_Cohort_Analysis_AI_Coding_Output.pdf",
        "AI Coding Tools Attract Top Performers – But Do They Create Them?",
        "GitClear, 2026",
      )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Technical Debt - Redundancy #comment-tag()], group: "technical-debt")[

  #notes_quote(
    title: "Your LLM Doesn't Write Correct Code. It Writes Plausible Code",
    details: [\ Hōrōshi, 2026],
  )[
    "In the 1980 Turing Award lecture Tony Hoare said: 'There are two ways of constructing a software design: one way is to make it so simple that there are obviously no deficiencies, and the other is to make it so complicated that there are no obvious deficiencies.' This LLM-generated code falls into the second category. The reimplementation is 576,000 lines of Rust. #bold[That is 3.7x more code] than SQLite."
    #notes_footnote_link(
      "https://blog.katanaquant.com/p/your-llm-doesnt-write-correct-code",
      "Your LLM Doesn't Write Correct Code. It Writes Plausible Code.",
      "Hōrōshi, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Technical Debt - Redundancy #comment-tag()], group: "technical-debt")[

  #notes_quote(
    title: "Sung Kim, 2026",
  )[
    "#bold[With AI coding agents, do you know you can accumulate years of technical debt in a matter of days.]

    How do you prevent your codebase from becoming unmaintainable? Remember, these coding agents often rely heavily on text-search patterns to understand and modify code."
    #notes_footnote_link(
      "https://bsky.app/profile/sungkim.bsky.social/post/3mkcruqzquk25",
      "",
      "Sung Kim, 2026",
    )
  ]
]

// =====================================================================================================================

= Security Vulnerabilities

#notes_slide(title: [Security Vulnerabilities #science-tag()], group: "security-vulnerabilities")[

  - #bold[AI-generated code can introduce real risks for security and reliability.]

  #v(-16pt)
  #set text(size: 19pt)
  #notes_quote(title: "Asleep at the Keyboard?", details: "Pearce et al.")[
    "We produce 89 different scenarios for Copilot to complete, producing 1,689 programs. Of these, #bold[we found approximately 40% to be vulnerable]."
    #notes_footnote_link(
      "https://dl.acm.org/doi/10.1145/3610721",
      "Asleep at the Keyboard? Assessing the Security of GitHub Copilot's Code Contributions",
      "Pearce et al., Communications of the ACM, 2025",
    )
  ]

  #notes_quote(title: "4x Velocity, 10x Vulnerabilities", details: "Apiiro")[
    By June 2025, AI-generated code was introducing over 10,000 new security findings per month across the repositories in our study---a 10x spike in just six months compared to December 2024. And #bold[the curve isn't flattening; it's accelerating].
    #notes_footnote_link(
      "https://apiiro.com/blog/4x-velocity-10x-vulnerabilities-ai-coding-assistants-are-shipping-more-risks/",
      "4x Velocity, 10x Vulnerabilities: AI Coding Assistants Are Shipping More Risks",
      "Apiiro, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Security Vulnerabilities #science-tag()], group: "security-vulnerabilities")[

  #align(center)[
    #image("05.Software_Development_part1/apiiro_1.png", width: 90%)
  ]
]

// =====================================================================================================================

#notes_slide(title: [Security Vulnerabilities #science-tag()], group: "security-vulnerabilities")[

  #align(center)[
    #image("05.Software_Development_part1/apiiro_2.png", width: 75%)
  ]
]

// =====================================================================================================================

#notes_slide(title: [Security Vulnerabilities #comment-tag()], group: "security-vulnerabilities")[

  #notes_quote(title: "Building a C compiler with a team of parallel Claudes", details: [\ Anthropic, 2026])[
    "We are still early, and #bold[fully autonomous development comes with real risks]. When a human sits with Claude during development, they can ensure consistent quality and catch errors in real time. For autonomous systems, #bold[it is easy to see tests pass and assume the job is done, when this is #notes_underline[rarely] the case]."
    #notes_footnote_link(
      "https://www.anthropic.com/engineering/building-c-compiler",
      "Building a C compiler with a team of parallel Claudes",
      "Anthropic, 2026",
    )
  ]
]

// =====================================================================================================================

= Maintainability

#notes_slide(title: [Maintainability #news-tag()], group: "maintainability")[

  #notes_quote(
    title: "For open source programs, AI coding tools are a mixed blessing",
    details: [\ TechCrunch, 2026],
  )[
    "#bold[AI coding tools have caused as many problems as they have solved], according to industry experts. The easy-to-use and accessible nature of AI coding tools has enabled a flood of bad code that threatens to overwhelm projects. #bold[Building new features is easier than ever, but maintaining them is just as hard and threatens to further fragment software ecosystems.]"

    #indent() ... Blender Foundation CEO Francesco Siddi said LLM-assisted contributions typically 'wasted reviewers' time and affected their motivation.

    #indent() ... The open source data transfer program cURL recently halted its bug bounty program after being overwhelmed by what creator Daniel Stenberg described as 'AI slop.'"
    #notes_footnote_link(
      "https://techcrunch.com/2026/02/19/for-open-source-programs-ai-coding-tools-are-a-mixed-blessing/",
      "For open source programs, AI coding tools are a mixed blessing",
      "R. Brandom, TechCrunch, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Maintainability #news-tag()], group: "maintainability")[

  #notes_quote(
    title: "The State of Code Abundance 2026",
    details: [\ CloudBees, 2026],
  )[
    "70% of engineering leaders say maintaining their test suite is now a bigger burden than writing code itself

    81% of organizations have seen production issues increase linked to Al-generated code,
    "
    #notes_footnote_link(
      "https://www.cloudbees.com/lp/2026-state-of-code-abundance-report",
      "The State of Code Abundance 2026",
      "CloudBees, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Maintainability #news-tag()], group: "maintainability")[

  #notes_quote(
    title: "The State of Code Abundance 2026",
    details: [\ CloudBees, 2026],
  )[
    "70% of engineering leaders say maintaining their test suite is now a bigger burden than writing code itself

    81% of organizations have seen production issues increase linked to Al-generated code,
    "
    #notes_footnote_link(
      "https://www.cloudbees.com/lp/2026-state-of-code-abundance-report",
      "The State of Code Abundance 2026",
      "CloudBees, 2026",
    )
  ]
]

// =====================================================================================================================

= Code Review

#notes_slide(title: [The Senior Engineer Tax #science-tag()], group: "code-review")[

  #notes_quote(
    title: [Ten takeaways from the AI Engineering Report 2026:\ The Acceleration Whiplash],
    details: [\ Faros Research, 2026],
  )[
    "The most experienced people in your organization are being buried...AI-generated code presents a specific and under-appreciated challenge for reviewers.

    #indent() Median time to first PR review is up 156.6%. Average time spent in code review is up 199.6%. Median time in review is up 441.5%. #bold[The engineers with the deepest knowledge of the system are spending their most valuable hours unraveling plausible-looking code that should never have reached them in the state it did.]"
    @faros_research
  ]
]

// =====================================================================================================================

#notes_slide(title: [Code Review #science-tag()], group: "code-review")[

  #notes_quote(
    title: "Agent pull requests are everywhere. Here's how to review them",
    details: [\ GitHub, 2026],
  )[
    The traditional loop --- request review, wait for code owner, merge --- breaks down when one developer can kick off a dozen agent sessions before lunch. #bold[Throughput has scaled exponentially. Human review capacity hasn't. The gap is widening.]

    #indent() Reviewing your own pull request isn't optional when agents are involved. #bold[It's basic respect for your reviewer's time.]
    #notes_footnote_link(
      "https://github.blog/ai-and-ml/generative-ai/agent-pull-requests-are-everywhere-heres-how-to-review-them/",
      "Agent pull requests are everywhere. Here's how to review them",
      "GitHub, 2026",
    )
  ]
]

// =====================================================================================================================

= Comprehension Debt

#notes_slide(title: [Comprehension Debt #science-tag()], group: "comprehension-debt")[

  #quote()[
    #indent() "#bold[Comprehension debt is the hidden cost to human intelligence and memory resulting from excessive reliance on AI and automation]. For engineers, it applies most to agentic engineering.

    #indent() There's a cost that doesn't show up in your velocity metrics when teams go deep on AI coding tools. Especially when its tedious to review all the code the AI generates. This cost accumulates steadily, and eventually it has to be paid - with interest."
  ]
]

// =====================================================================================================================

#notes_slide(title: [Comprehension Debt #science-tag()], group: "comprehension-debt")[

  #quote()[
    #indent() "Unlike technical debt, which announces itself through mounting friction - slow builds, tangled dependencies, the creeping dread every time you touch that one module - #bold[comprehension debt breeds false confidence]. The codebase looks clean. The tests are green. #bold[The reckoning arrives quietly, usually at the worst possible moment.]

    #indent() ... no one on the team could explain why design decisions had been made or how different parts of the system were supposed to work together. The theory of the system had evaporated.

    #indent() #bold[That's comprehension debt compounding in real time.]"
  ]
]

// =====================================================================================================================

#notes_slide(title: [Comprehension Debt #science-tag()], group: "comprehension-debt")[

  #notes_quote(
    title: "Comprehension Debt - The Hidden Cost of AI Generated Code",
    details: [\ A. Osmani, 2026],
  )[
    "#bold[AI-generated code breaks that feedback loop]. The volume is too high. The output is syntactically clean, often well-formatted, superficially correct - precisely the signals that historically triggered merge confidence. #bold[But surface correctness is not systemic correctness.]

    #indent() ... Research suggests that developers using AI for code generation delegation score below 40% on comprehension tests, while developers using AI for conceptual inquiry - asking questions, exploring tradeoffs - score above 65%. #bold[The tool doesn't destroy understanding. How you use it does.]

    #indent() ... #bold[As AI volume goes up, the engineer who truly understands the system becomes more valuable, not less.]"
    #notes_footnote_link(
      "https://addyosmani.com/blog/comprehension-debt/",
      "Comprehension Debt - The Hidden Cost of AI Generated Code",
      "A. Osmani, 2026",
    )
  ]
]

// =====================================================================================================================

= Cost

#notes_slide(title: [Cost #news-tag()], group: "cost")[

  #notes_quote(
    title: "The State of Code Abundance 2026",
    details: [\ CloudBees, 2026],
  )[
    "54% report a significant increase in CI/CD infrastructure spend in the past 12 months. 53% report a significant increase in testing, security, and deployment costs.

    #indent() Less than half (45%) of teams describe their Al spend as highly predictable quarter-to-quarter. 27% have set hard limits or quotas on token usage"
    #notes_footnote_link(
      "https://www.cloudbees.com/lp/2026-state-of-code-abundance-report",
      "The State of Code Abundance 2026",
      "CloudBees, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Cost #news-tag()], group: "cost")[

  #notes_quote(
    title: "Agentic Coding is a Trap",
    details: [\ Lars Faye, 2026],
  )[
    "#bold[Model providers are heavily subsidized, and the models themselves are built on shifting sands]. Every new model release follows the same pattern of high benchmarks, followed by hype, followed by the reality of usage and everyone complaining of them being 'nerfed' and burning through 2x-3x as many tokens to get the same job done."
    @agentic_coding_is_a_trap
  ]
]

// =====================================================================================================================

#notes_slide(title: [Cost #news-tag()], group: "cost")[

  #notes_quote(
    title: "Software Developers Say AI Is Rotting Their Brains",
    details: [\ E. Maiberg, 2026],
  )[
    "More concerning, developers who use AI at work report that they feel like they are de-skilling themselves and #bold[losing their ability to do their jobs as well as they used to].

    #indent() There's no way to evaluate whether that much code is well-written or secure --- especially when hundreds of other programmers in the company are doing the same.

    #indent() #bold[We're building a rat's nest of tech debt that will be impossible to untangle when these models become prohibitively expensive (any minute now...).]"
    #notes_footnote_link(
      "https://www.404media.co/software-developers-say-ai-is-rotting-their-brains/",
      "Software Developers Say AI Is Rotting Their Brains",
      "E. Maiberg, May 2026",
    )
  ]
]
