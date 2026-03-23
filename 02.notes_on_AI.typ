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
    subtitle: [#text(40pt)[#smallcaps[Software Development\ in the Age of AI]]],
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

// =====================================================================================================================


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

== #text(font: "Latin Modern Sans", weight: "bold")[Software Development in the Age of AI #h(1fr) 1/2] <touying:hidden>

#outline(target: selector(heading).after(<p1s>).before(<p1e>), title: none)

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Software Development in the Age of AI #h(1fr) 2/2] <touying:hidden>

#outline(target: selector(heading).after(<p2s>).before(<p2e>), title: none)

// =====================================================================================================================

= AI and Software Employment <p1s>

// =====================================================================================================================

#notes_slide(title: "AI Replacing Developers Misconception")[

  _Despite the daily dystopian and gloomy predictions on social media and news websites, AI will not replace software developers. In fact, demand for them is and will remain strong._

  Layoffs and lower entry-level job postings have been driven by #bold[massive capital spending on infrastructure] and economic uncertainty, disproportionately affecting early-career roles.
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

  #v(10pt)
  A study from Harvard Business School #notes_footnote_link("https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5425555", "Generative AI as Seniority-Biased Technological Change", "Social Science Research Network, 2025") highlighted that at firms adopting AI, junior employment drops significantly while senior employment remains flat. The researchers warn that this is a _"defensive move"_ that boosts short-term efficiency but #bold[risks a long-term talent crisis], as there will be fewer human experts trained to supervise the AI systems of the future.
]

// =====================================================================================================================

#notes_slide(title: "AI and Software Employment", number: "1/7")[
  #set text(size: 22pt)

  #notes_quote(title: "Shaping AI's Impact on Billions of Lives")[
    "The impact of productivity gains on jobs depends on whether the demand for goods produced by that work is #bold[elastic] or #bold[inelastic]. If demand is #underline(offset: 3pt)[inelastic], productivity gains means jobs will be lost...

    ... If product demand is sufficiently #underline(offset: 3pt)[elastic], productivity-enhancing technology will #underline(offset: 3pt)[increase industry employment]\"
    #notes_footnote_link(
      "https://arxiv.org/pdf/2412.02730",
      "Shaping AI's Impact on Billions of Lives",
      "arXiv, 2025 / Communications of the ACM, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Software Employment", number: "2/7")[

  #bold[Software development has #notes_underline[elastic] demand]. It offers endless potential and opportunities, driven by its integration into every aspect of life and business, and the rapid technological evolution.
  #v(10pt)

  #set list(spacing: 30pt)
  - The US Bureau of Labor Statistics predicts a #bold[25% increase] in software developers over the next decade #notes_footnote_link("https://www.bls.gov/ooh/Computer-and-Information-Technology/Software-developers.htm", "Employment Projections, 2025-2035", "US Bureau of Labor Statistics, 2025").
  - The World Economic Forum lists software and application developers among the #bold[fastest-growing jobs] in the 2025-2030 timeframe
  #notes_footnote_link("https://www.weforum.org/publications/the-future-of-jobs-report-2025/", "Future of Jobs Report, 2025-2030", "World Economic Forum, 2025").

  - The global software market size is projected to reach \$1.4 trillion by 2030, growing at a compound annual #bold[growth rate] (CAGR) of #bold[+11.3%] #notes_footnote_link("https://www.grandviewresearch.com/industry-analysis/software-market-report", "Software Market (2025 - 2030)", "Grand View Research, 2025").
]

// =====================================================================================================================

#notes_slide(title: "AI and Software Employment", number: "3/7")[

  - Engineering headcount change since 2022: Meta #bold[+19%], Google #bold[+16%], Apple #bold[+13%] #notes_footnote_link("https://underdog.io/blog/software-engineer-job-market-2025", "Software Engineer Job Market 2025", "Underdog.io, 2025").

  #notes_quote(title: "AI exuberance: Economic upside, stock market downside")[
    \~ Jobs with high exposure to AI have seen #notes_underline[greater wage] and #notes_underline[stronger job growth] than jobs minimally exposed to AI
    #notes_footnote_link("https://corporate.vanguard.com/content/dam/corp/research/pdf/isg_vemo_2026.pdf", "AI exuberance: Economic upside, stock market downside", "Vanguard economic and market outlook for 2026").
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Software Employment", number: "4/7")[

  #v(-30pt)
  #align(center)[
    #image("notes_on_AI/capex_vs_people.png", width: 65%)
  ]
  #v(-20pt)
  #notes_unmarked_footnote_link(
    "https://www.linkedin.com/posts/prasad-setty_meta-cut-equity-awards-for-most-employees-activity-7432847109457874944-vZRS/",
    "When Capex Surpasses People",
    "Prasad Setty, 2026",
  )
]

// =====================================================================================================================

#notes_slide(title: "AI and Software Employment", number: "5/7")[

  #text(
    size: 18pt,
  )[#bold[Occupations with the highest projected total change in employment, 2024-2034]]#notes_footnote_link(
    "https://usafacts.org/articles/what-are-the-fastest-growing-professions-in-america/",
    "What are the fastest-growing professions in America?",
    "USAFacts, 2025",
  )
  #place(
    top + left,
    dx: 120pt,
    dy: 100pt,
    [#text(fill: blue)[➜]],
  )
  #align(center)[
    #image("notes_on_AI/occupation_2034.png", height: 80%)
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Software Employment", number: "6/7")[

  #notes_quote(
    title: "Redefining the Software Engineering Profession for AI",
    details: "Communications of the ACM, 2026",
  )[
    "Without the hiring of early-in-career developers, the profession's talent pipeline will collapse, and organizations will face a future without the next generation of experienced engineers."
    #notes_footnote_link(
      "https://dl.acm.org/doi/pdf/10.1145/3779312",
      "Redefining the Software Engineering Profession for AI",
      "Russinovich & Hanselman, Communications of the ACM, 2026",
    ) <russinovich>
  ]
]

// =====================================================================================================================

#notes_slide(title: "AI and Software Employment", number: "7/7")[

  #notes_quote(
    title: "What is agentic engineering?",
    details: [\ S. Willison, 2026],
  )[
    "Now that we have software that can write working code, what is there left for us humans to do?

    #indent() #bold[The answer is so much stuff.]

    #indent() Writing code has never been the sole activity of a software engineer. The craft has always been figuring out what code to write. Any given software problem has dozens of potential solutions, each with their own tradeoffs. Our job is to navigate those options and find the ones that are the best fit for our unique set of circumstances and requirements.
    #notes_footnote_link(
      "https://simonwillison.net/guides/agentic-engineering-patterns/what-is-agentic-engineering/",
      "What is agentic engineering?",
      "S. Willison, 2026",
    )
  ]
]

// =====================================================================================================================

= Limitations of AI-Generated Code

// =====================================================================================================================

== Generalization

#notes_slide(title: "Generalization", number: "1/2")[

  - #bold[Lack of generalization beyond the training data.]

  #notes_quote(title: "Benj Edwards", details: "Ars Technica")[
    "This brittleness means that #bold[coding agents are almost frighteningly good at what they've been trained and fine-tuned on---modern programming languages], JavaScript, HTML, and similar well-represented technologies---and generally #bold[terrible at tasks on which they have not been deeply trained].

    #indent() ... It took me five minutes to make a nice HTML5 demo with Claude but a week of torturous trial and error, plus actual systematic design on my part, to make a similar demo of an Atari 800 game." @benj_edwards
  ]
]

// =====================================================================================================================

== Creativity

// =====================================================================================================================

#notes_slide(title: "Creativity", number: "2/2")[

  #notes_quote(title: "Benj Edwards", details: "Ars Technica")[
    "Due to what might poetically be called "preconceived notions" baked into a coding model's neural network (more technically, statistical semantic associations), #bold[it can be difficult to get AI agents to create truly novel things], even if you carefully spell out what you want." @benj_edwards
  ]
]

// =====================================================================================================================

== The Illusion of Competence

#notes_slide(title: "The Illusion of Competence", number: "1/2")[

  - #bold[Bug proliferation]

  #v(-20pt)
  #notes_quote(title: "Benj Edwards", details: "Ars Technica")[
    "#bold[Fixing bugs can also create bugs elsewhere. Coding agents supercharge this phenomenon] because they can barrel through your code and make sweeping changes in pursuit of narrow-minded goals that affect lots of working systems."
    @benj_edwards
  ]

  #notes_quote(title: "CodeRabbit")[
    "A comprehensive report analyzed 470 real-world open-source pull requests and found that #bold[AI-generated code introduces 1.7x more defects] across every major category of software quality---including logic, maintainability, security, and performance."
    #notes_footnote_link(
      "https://www.coderabbit.ai/whitepapers/state-of-AI-vs-human-code-generation-report",
      "State of the AI vs. Human Code Generation Report",
      "CodeRabbit, 2025",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "The Illusion of Competence", number: "2/2")[

  #notes_quote(title: "Sonar", details: "State of Code Developer Survey report")[
    #indent() "61% agree that \"AI often produces code that looks correct but isn't reliable.\" That's a critical finding---it means #bold[AI code can introduce subtle bugs that are harder to spot than typical human errors.]

    #indent() The same percentage (61%) agree that it \"#bold[requires a lot of effort to get good code from AI]\" through prompting and fixing."
    #notes_footnote_link(
      "https://www.sonarsource.com/state-of-code-developer-survey-report.pdf",
      "State of Code Developer Survey report",
      "Sonar, 2026",
    )
  ]
]

// =====================================================================================================================

== Technical Debt

#notes_slide(title: "Technical Debt", number: "1/4")[

  - #bold[AI-assisted code has contributed to a measurable decline in code quality.] Code generated by LLMs without engineering supervision tends to deteriorate quickly over time due to duplicated logic, inconsistent naming, and poor architectural  organization. This translates to growing costs of maintaining, disatisfaction, and fragile systems.

  #align(center)[
    #image("notes_on_AI/messy_codebase.jpg", width: 40%)
  ]
]

// =====================================================================================================================

#notes_slide(title: "Technical Debt", number: "2/4")[

  #v(-10pt)
  #set text(size: 19pt)
  #notes_quote(title: "GitClear", details: "AI Copilot Code Quality")[
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

#notes_slide(title: "Technical Debt", number: "3/4")[

  #set text(size: 19pt)
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

#notes_slide(title: "Technical Debt - Redundancy", number: "4/4")[

  #notes_quote(
    title: "Your LLM Doesn't Write Correct Code. It Writes Plausible Code.",
    details: [\ Hōrōshi, 2026],
  )[
    "In the 1980 Turing Award lecture Tony Hoare said: 'There are two ways of constructing a software design: one way is to make it so simple that there are obviously no deficiencies, and the other is to make it so complicated that there are no obvious deficiencies.' This LLM-generated code falls into the second category. The reimplementation is 576,000 lines of Rust. #bold[That is 3.7x more code] than SQLite."
    @horoshi
  ]
]

// =====================================================================================================================

== Security Vulnerability

#notes_slide(title: "Security Vulnerability", number: "1/4")[

  - #bold[AI-generated code can introduce real risks for security and reliability.]

  #v(-16pt)
  #set text(size: 19pt)
  #notes_quote(title: "Asleep at the Keyboard?", details: "Pearce et al")[
    "We produce 89 different scenarios for Copilot to complete, producing 1,689 programs. Of these, #bold[we found approximately 40% to be vulnerable]."
    #notes_footnote_link(
      "https://dl.acm.org/doi/10.1145/3610721",
      "Asleep at the Keyboard? Assessing the Security of GitHub Copilot's Code Contributions",
      "Pearce et al, Communications of the ACM, 2025",
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

#notes_slide(title: "Security Vulnerability", number: "2/4")[

  #align(center)[
    #image("notes_on_AI/apiiro_1.png", width: 90%)
  ]
]

// =====================================================================================================================

#notes_slide(title: "Security Vulnerability", number: "3/4")[

  #align(center)[
    #image("notes_on_AI/apiiro_2.png", width: 75%)
  ]
]

// =====================================================================================================================

// =====================================================================================================================

#notes_slide(title: "Security Vulnerability", number: "4/4")[

  #notes_quote(title: "Building a C compiler with a team of parallel Claudes", details: "Anthropic")[
    "We are still early, and #bold[fully autonomous development comes with real risks]. When a human sits with Claude during development, they can ensure consistent quality and catch errors in real time. For autonomous systems, #bold[it is easy to see tests pass and assume the job is done, when this is #notes_underline[rarely] the case]."
    #notes_footnote_link(
      "https://www.anthropic.com/engineering/building-c-compiler",
      "Building a C compiler with a team of parallel Claudes",
      "Anthropic, 2026",
    )
  ]
]

// =====================================================================================================================

== The 'Last Mile' Problem <p1e>

#notes_slide(title: "The 'Last Mile' Problem", number: "1/3")[

  - #bold[The "Last Mile" Problem]. Prototyping with AI is not the same as building a production-quality product.

  #notes_quote(title: "Benj Edwards", details: "Ars Technica")[
    "The first 90 percent of an AI coding project comes in fast and amazes you. #bold[The last 10 percent involves tediously filling in the details] through back-and-forth trial-and-error conversation with the agent." @benj_edwards
  ]
]

// =====================================================================================================================

#notes_slide(title: "The 'Last Mile' Problem", number: "2/3")[

  #notes_quote(title: "Peter Yang")[
    "Honest reflections from coding with AI so far as a non-engineer:

    #indent() It can get you 70% of the way there, but that #bold[last 30% is frustrating]. It keeps taking one step forward and two steps backward with new bugs, issues, etc.

    #indent() If I knew how the code worked I could probably fix it myself. But since I don't, #bold[I question if I'm actually learning that much.]"
    #notes_footnote_link(
      "https://x.com/petergyang/status/1863058206752379255",
      "Peter Yang",
      "",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "The 'Last Mile' Problem", number: "3/3")[

  #notes_quote(
    title: [The 100 hour gap between a vibecoded prototype\ and a working product],
    details: [\ M. Budkowski, 2026],
  )[
    With AI, it's easier to get the first 90 percent out there. This means we can spend more time on the remaining 10 percent, which means more time for craftsmanship and figuring out how to make your users happy.
    #notes_footnote_link(
      "https://www.bloomberg.com/opinion/articles/2026-03-13/the-ai-washing-of-job-cuts-is-corrosive-and-confusing",
      "The 100 hour gap between a vibecoded prototype and a working product",
      "M. Budkowski, 2026",
    )
  ]
  // https://addyo.substack.com/p/the-70-problem-hard-truths-about
]

// =====================================================================================================================

= AI as a Software Engineering Tool <p2s>

// =====================================================================================================================

== Code Generation is NOT Software Engineering

#notes_slide(title: "Code Generation is NOT Software Engineering", number: "1/3")[

  - #bold[LLMs should not be seen as a substitute for software engineering.]

  #notes_quote(title: "Simon Willison", details: "Vibe engineering")[
    "#bold[One of the lesser spoken truths of working productively with LLMs as a software engineer on non-toy-projects is that it's #notes_underline[difficult]]. There's a lot of depth to understanding how to use the tools, there are plenty of traps to avoid, and the pace at which they can churn out working code raises the bar for what the human participant can and should be contributing.

    #indent() ... Iterating with coding agents to #bold[produce production-quality] code that I'm confident #bold[I can maintain in the future] feels like a different process entirely."
    #notes_footnote_link(
      "https://simonwillison.net/2025/Oct/7/vibe-engineering/",
      "Vibe engineering",
      "Simon Willison, 2025",
    ) <simon_willison>
  ]
]

// =====================================================================================================================

#notes_slide(title: "Code Generation is NOT Software Engineering", number: "2/3")[

  #notes_quote(title: "Code Is Cheap Now. Software Isn't")[
    "#bold[LLMs] have effectively killed the cost of generating lines of code, but they #bold[haven't touched the cost of truly understanding a problem]. We're seeing a flood of "apps built in a weekend," but most of these are just thin wrappers around third-party APIs. They look impressive in a Twitter demo, but they often crumble the moment they hit the friction of the real world...

    #indent()... In this new reality, #bold[engineering expertise remains incredibly valuable], but the nature of the role is shifting. Relevance is not fading. Instead, it is about leveraging these tools to build at a higher level than was previously possible. True expertise is now required to steer these systems and provide the technical oversight that LLMs currently lack."
    #notes_footnote_link(
      "https://www.chrisgregori.dev/opinion/code-is-cheap-now-software-isnt",
      "Code Is Cheap Now. Software Isn't",
      "Chris Gregori, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "Code Generation is NOT Software Engineering", number: "3/3")[

  #notes_quote(title: "Benj Edwards", details: "Ars Technica")[
    "Creating durable production code, managing a complex project, or crafting something truly novel still requires experience, patience, and skill beyond what today's AI agents can provide on their own.

    #indent() ... veteran software developers probably shouldn't fear losing their jobs to these tools any time soon. #bold[In fact, they may become busier than ever].

    #indent() ... I don't think AI tools will make human software designers obsolete. Instead, they may well help those designers become more capable."
    #notes_footnote_link(
      "https://arstechnica.com/information-technology/2026/01/10-things-i-learned-from-burning-myself-out-with-ai-coding-agents/",
      "10 things I learned from burning myself out with AI coding agents",
      "Benj Edwards, Ars Technica, 2026",
    ) <benj_edwards>
  ]
]

// =====================================================================================================================

//#notes_slide(title: "Code Generation is NOT Software Engineering", number: "3/3")[
// Crafting the Code You Don’t Write: Sculpting Software in an AI World - Daisy Hollman - CppCon 2025
//https://www.youtube.com/watch?v=v6OyVjQpjjc
//]

// =====================================================================================================================

== The Role of Human Expertise

#notes_slide(title: "The Role of Human Expertise", number: "1/4")[

  - #bold[AI systems complement human expertise. They do not substitute for it.]

  #notes_quote(title: "The skeptic's guide to generative AI assisted coding", details: [\ Rob Patro])[
    "What the models do, the capabilities they have, and the quality of the content they produce is, to a large extent, #bold[a reflection of the user]."
    #notes_footnote_link(
      "https://combine-lab.github.io/blog/2026/02/15/a-skeptics-guide-to-generative-ai-coding.html",
      "The skeptic's guide to generative AI assisted coding",
      "Rob Patro, combine-lab, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: "The Role of Human Expertise", number: "2/4")[

  #notes_quote(title: "Benj Edwards", details: "Ars Technica")[
    "#bold[Experienced human software developers bring judgment, creativity, and domain knowledge that AI models lack]. They know how to architect systems for long-term maintainability, how to balance technical debt against feature velocity, and when to push back when requirements don't make sense

    #indent() ... They can automate many tasks, but #bold[managing the overarching project scope still falls to the person telling the tool what to do]." @benj_edwards
  ]
]

// =====================================================================================================================

#notes_slide(title: "The Role of Human Expertise", number: "3/4")[

  #notes_quote(title: "Benj Edwards", details: "Ars Technica")[
    #indent() "Knowing something about how good software development works helps a lot when guiding an #bold[AI coding agent---the tool amplifies your existing knowledge rather than replacing it]".  @benj_edwards
  ]

  #v(20pt)
  #notes_quote(title: "Simon Willison", details: "Vibe engineering")[
    "#bold[AI tools amplify existing expertise]. The more skills and experience you have as a software engineer the faster and better the results you can get from working with LLMs and coding agents." @simon_willison
  ]
]

// =====================================================================================================================

#notes_slide(title: "The Role of Human Expertise", number: "4/4")[

  #notes_quote(
    title: "Redefining the Software Engineering Profession for AI",
    details: "Communications of the ACM, 2026",
  )[
    "Relying too much on AI risks missing subtle bugs, architectural flaws, and vulnerabilities that only skilled engineers can catch. #bold[Human oversight, critical thinking, and domain knowledge are indispensable] for both correcting errors and driving innovation as technology progresses.

    #indent() Generative AI currently acts as seniority-biased technological change: #bold[It disproportionately amplifies engineers who already possess systems judgment], like taste for architecture, debugging under uncertainty, and operational intuition." @russinovich
  ]
]

// =====================================================================================================================

#notes_slide(title: "Plausibility over Correctness")[

  #notes_quote(
    title: "Your LLM Doesn't Write Correct Code. It Writes Plausible Code.",
    details: [\ Hōrōshi, 2026],
  )[
    "#bold[LLMs optimize for plausibility over correctness]. In this case, plausible is about 20,000 times slower than correct.

    #indent() ... THIS is the failure mode. Not broken syntax or missing semicolons. The code is syntactically and semantically correct. #bold[It does what was asked for. It just does not do what the situation requires.]"
    #notes_footnote_link(
      "https://blog.katanaquant.com/p/your-llm-doesnt-write-correct-code",
      "Your LLM Doesn't Write Correct Code. It Writes Plausible Code.",
      "Hōrōshi, 2026",
    ) <horoshi>
  ]
]

// =====================================================================================================================

= Engineering Practices in the Age of AI

// =====================================================================================================================

#notes_slide(title: "Engineering Practices in the Age of AI", number: "1/5")[

  #bold[LLMs reward existing software engineering practices.] The following list contains a minimal collection of practices where AI systems can enhance the software development process. This list has been compiled from public engineers' notes, colleagues, and personal experience.

  #set list(spacing: 30pt)
  - #bold[Code Review]. LLMs rely on pattern matching and memorization. They can be very effective at finding common issues, wrong logic, or missing assumptions in code. _This is not a substitute for human code review_.

  - #bold[Documentation]. Writing documentation is essential for software understanding and maintenance, but it is often a time-consuming and boring task. LLMs can help write documentation, or a draft, quickly, _to review and refine later_.

  - #bold[Code Explanation]. LLMs are able to parse code much faster than humans. For this reason, they can be very useful for explaining code within its context, or for understanding the organization and workflow of large codebases.
]

// =====================================================================================================================

#notes_slide(title: "Engineering Practices in the Age of AI", number: "2/5")[

  #set list(spacing: 40pt)
  - #bold[Prototyping]. Productization is the most demanding phase of the development process. However, it requires a clear idea of what to achieve, which is often not the case. LLMs can be very effective at quickly implementing new features or ideas, _even if the quality is far from production-ready_.

  - #bold[Discussing Ideas and Intuitions]. It is not uncommon to reflect on new ideas or revise previous ones about specific aspects of a problem. LLMs can discuss these topics similarly to how a coworker might, even before prototyping.

  - #bold[Evaluating Alternatives]. There are dozens of ways to solve a given problem. LLMs can suggest alternatives that users can evaluate, and then select the most suitable one _depending on the context_.
]

// =====================================================================================================================

#notes_slide(title: "Engineering Practices in the Age of AI", number: "3/5")[

  #set list(spacing: 40pt)
  - #bold[Enforcing Coding Style]. Large codebases involving several engineers tend to develop high-level practices that are often difficult to enforce with common tools. Coding style can fall into this category. Requirements such as "the code shall not use lambda expressions" are difficult to automate but trivial with LLMs.

  - #bold[Testing]. Robust and comprehensive testing suites prevent users _and LLMs_ from unintentionally introducing bugs. Additionally, LLMs can quickly draft tests that can be adjusted later.

  - #bold[Refactoring]. Technology evolves faster than engineers can keep up with, especially in projects with insufficient engineering resources. LLMs are an excellent tool for modernizing codebases, but it is important to pay attention to _maintaining the underlying logic_.
]

// =====================================================================================================================

#notes_slide(title: "Engineering Practices in the Age of AI", number: "4/5")[

  #set list(spacing: 40pt)
  - #bold[Debugging]. LLMs can automate the debugging process, especially for simple bugs. They can compile, execute, analyze the output, or even navigate the `git` history, and find connections in the code to identify problems or formulate hypotheses.

  - #bold[Vibe-coding Tools]. It is common to face limitations with open-source tools because each project has its own specific context. Engineering work often doesn't allow spending time on external projects to overcome these limitations. LLMs can implement small features while engineers work on the actual code. One example could be adding a new check to `clang-tidy`.

  - #bold[Syntax Helper]. It is common to work on projects written in programming languages outside our area of expertise. LLMs can assist by explaining new syntax and translating between languages.
]

// =====================================================================================================================

#notes_slide(title: "Engineering Practices in the Age of AI", number: "5/5")[

  - #bold[Git Interaction]. LLMs show excellent capabilities when operating with `git`. They can navigate history to reverse changes and identify the root causes of bugs. They can also handle the rebase process in complex scenarios without human intervention.
]

<p2e>
