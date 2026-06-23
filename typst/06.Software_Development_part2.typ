#import "config.typ": *

#show: notes-theme.with(
  title: [Software Development\ in the Age of AI],
  subtitle: "Limitations and Engineering Practices",
)

#title-slide()

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Software Development in the Age of AI #h(1fr) 1/2] <touying:hidden>

#outline(target: selector(heading).after(<p1s>).before(<p1e>), title: none)

// =====================================================================================================================

== #text(font: "Latin Modern Sans", weight: "bold")[Software Development in the Age of AI #h(1fr) 2/2] <touying:hidden>

#outline(target: selector(heading).after(<p2s>).before(<p2e>), title: none)

= Limitations of AI-Generated Code

// =====================================================================================================================

== The Slot Machine and the Illusion of Control

#notes_slide(title: [The Slot Machine and the Illusion of Control #comment-tag()])[

  #notes_quote(title: "The Dangerous Illusion of AI Coding?", details: [\ Jeremy Howard, 2026])[
    "The thing about AI based coding is that it's like a #bold[slot machine], and that you have an #bold[illusion of control], you know, you can get to craft your prompt, and your list of MCPs, and your skills, and whatever, and then in the end, you pull the lever. Right?

    #indent() ... #bold[It's the stochastic thing. You get the occasional win. It's like, oh, I won. I got a feature.]"
    #notes_footnote_link(
      "https://www.youtube.com/watch?v=dHBEQ-Ryo24",
      "The Dangerous Illusion of AI Coding?",
      "Jeremy Howard, 2026",
    ) <jeremy_howard>
  ]
]


// =====================================================================================================================

== Generalization

#notes_slide(title: [Generalization #comment-tag()])[

  - #bold[Lack of generalization beyond the training data.]

  #notes_quote(title: "Benj Edwards", details: [\ Ars Technica])[
    "This brittleness means that #bold[coding agents are almost frighteningly good at what they've been trained and fine-tuned on---modern programming languages], JavaScript, HTML, and similar well-represented technologies---and generally #bold[terrible at tasks on which they have not been deeply trained].

    #indent() ... It took me five minutes to make a nice HTML5 demo with Claude but a week of torturous trial and error, plus actual systematic design on my part, to make a similar demo of an Atari 800 game."
    #notes_footnote_link(
      "https://arstechnica.com/information-technology/2026/01/10-things-i-learned-from-burning-myself-out-with-ai-coding-agents/",
      "10 things I learned from burning myself out with AI coding agents",
      "Benj Edwards, Ars Technica, 2026",
    ) <benj_edwards>
  ]
]

// =====================================================================================================================

== Creativity

// =====================================================================================================================

#notes_slide(title: [Creativity #comment-tag()])[

  #notes_quote(title: "Benj Edwards", details: [\ Ars Technica])[
    "Due to what might poetically be called "preconceived notions" baked into a coding model's neural network (more technically, statistical semantic associations), #bold[it can be difficult to get AI agents to create truly novel things], even if you carefully spell out what you want." @benj_edwards
  ]
]

// =====================================================================================================================

== The Illusion of Competence

#notes_slide(title: [The Illusion of Competence #science-tag()], group: "illusion-competence")[

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

#notes_slide(title: [The Illusion of Competence #science-tag()], group: "illusion-competence")[

  #notes_quote(title: "Jeremy Howard", details: [\ The Dangerous Illusion of AI Coding?, 2026])[
    "#bold[LLMs cosplay understanding things.]

    #indent() ... #bold[The difference between pretending to be intelligent and actually being intelligent is entirely unimportant, as long as you're in the region in which the pretense is actually effective], you know. So it's actually fine for a great many tasks that LLMs only pretend to be intelligent, because for all intents and purposes, it just doesn't matter #bold[until you get to the point where it can't pretend anymore]. And then you realize, like, oh my god. This thing is so stupid."
    @jeremy_howard
  ]
]

// =====================================================================================================================

#notes_slide(title: [The Illusion of Competence #science-tag()], group: "illusion-competence")[

  #notes_quote(title: "Sonar", details: [\ State of Code Developer Survey report, 2026])[
    "61% agree that \"AI often produces code that looks correct but isn't reliable.\" That's a critical finding---it means #bold[AI code can introduce subtle bugs that are harder to spot than typical human errors.]

    #indent() The same percentage (61%) agree that it \"#bold[requires a lot of effort to get good code from AI]\" through prompting and fixing."
    #notes_footnote_link(
      "https://www.sonarsource.com/state-of-code-developer-survey-report.pdf",
      "State of Code Developer Survey report",
      "Sonar, 2026",
    )
  ]
]

// =====================================================================================================================

== Long-Term Tasks

#notes_slide(title: [Long-Term Tasks #science-tag()], group: "long-term-tasks")[

  #notes_quote(
    title: "EvoClaw: Evaluating AI Agents on Continuous Software Evolution",
    details: [\ Deng et al., 2026],
  )[
    "Overall performance scores drop significantly from > 80% on isolated tasks to at most 38% in continuous settings, #bold[exposing agents' profound struggle with longterm maintenance and error propagation]. #notes_footnote_link(
      "https://arxiv.org/pdf/2603.13428",
      "EvoClaw: Evaluating AI Agents on Continuous Software Evolution",
      "Deng et al., arXiv, June 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Long-Term Task #science-tag()], group: "long-term-tasks")[

  #v(-32pt)
  #notes_quote(
    title: "Agentic Software: How AI Agents Are Restructuring the Software Paradigm",
    details: [\ Z. Cao, 2026],
  )[
    #set enum(spacing: 24pt)
    #set text(size: 19pt)
    1. #bold[Context drift]. As codebases grow beyond the effective context window, agents lose coherent understanding of system-wide invariants and dependencies.
    2. #bold[Error propagation]. A small error in an early commit cascades into compounding failures in subsequent work, and agents lack robust mechanisms for detecting and recovering from these chains.
    3. #bold[Technical debt awareness]. Agents do not currently model the long-term costs of their design decisions --- they optimize for immediate task completion without considering maintainability.
    4. #bold[Verification fidelity]. Automated testing remains incomplete; agents can pass tests while introducing subtle semantic errors that only manifest under novel inputs. #notes_footnote_link(
        "https://arxiv.org/pdf/2606.05608",
        "Agentic Software: How AI Agents Are Restructuring the Software Paradigm",
        "Z. Cao, arXiv, June 2026",
      )
  ]
]

// =====================================================================================================================

== The "Last Mile" Problem <p1e>

#notes_slide(title: [The "Last Mile" Problem #comment-tag()], group: "last-mile")[

  - #bold[The "Last Mile" Problem]. Prototyping with AI is not the same as building a production-quality product.

  #notes_quote(title: "Benj Edwards", details: [\ Ars Technica, 2026])[
    "The first 90 percent of an AI coding project comes in fast and amazes you. #bold[The last 10 percent involves tediously filling in the details] through back-and-forth trial-and-error conversation with the agent." @benj_edwards
  ]
]

// =====================================================================================================================

#notes_slide(title: [The "Last Mile" Problem #comment-tag()], group: "last-mile")[

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

#notes_slide(title: [The "Last Mile" Problem #comment-tag()], group: "last-mile")[

  #notes_quote(
    title: [The 100 hour gap between a vibecoded prototype and a working product],
    details: [\ M. Budkowski, 2026],
  )[
    With AI, it's easier to get the first 90 percent out there. This means we can spend more time on the remaining 10 percent, which means more time for craftsmanship and figuring out how to make your users happy.
    #notes_footnote_link(
      "https://kanfa.macbudkowski.com/vibecoding-cryptosaurus",
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

#notes_slide(title: [Code Generation is NOT Software Engineering #comment-tag()], group: "code-generation")[

  - #bold[LLMs should not be seen as a substitute for software engineering.]

  #notes_quote(
    title: "Jeremy Howard",
    details: [\ The Dangerous Illusion of AI Coding?, 2026],
  )[
    #bold[Software engineering is an unusual discipline, and a lot of people mistake it for being the same as typing code into an IDE.]

    #indent() ... Because software engineering is all about finding what those pieces are, and how they should behave, and then how you can put them together to create a bigger piece, and then how you can put them together to create a bigger piece. #bold[And if we do that well, then in 10 years' time, we could have software that is far more capable than anything we could even imagine today.]"
    #notes_footnote_link(
      "https://www.youtube.com/watch?v=dHBEQ-Ryo24",
      "The Dangerous Illusion of AI Coding?",
      "Jeremy Howard, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Code Generation is NOT Software Engineering #science-tag()], group: "code-generation")[

  #notes_quote(
    title: "ProgramBench: Can Language Models Rebuild Programs From Scratch?",
    details: [\ Yang et al., 2026],
  )[
    "In ProgramBench, given only a program and its documentation, agents must architect and implement a codebase that matches the reference.

    #indent() ... Our 200 tasks range from compact CLI tools to widely used software such as FFmpeg, SQLite, and the PHP interpreter. We evaluate 9 LMs and find that #bold[none fully resolve any task].

    #indent() ... Models favor monolithic, single-file implementations #bold[that diverge sharply from human-written code]."
    #notes_footnote_link(
      "https://arxiv.org/pdf/2605.03546",
      "ProgramBench: Can Language Models Rebuild Programs From Scratch?",
      "Yang et al., ArXiv, May 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Code Generation is NOT Software Engineering #comment-tag()], group: "code-generation")[

  #notes_quote(title: "Simon Willison", details: [\ Vibe engineering])[
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

#notes_slide(title: [Code Generation is NOT Software Engineering #comment-tag()], group: "code-generation")[

  #notes_quote(title: "Andrej Karpathy")[
    "I'm not very happy with the code quality and I think #bold[agents bloat abstractions], have poor code aesthetics, are very prone to copy pasting code blocks and #bold[it's a mess], but at this point I stopped fighting it too hard and just moved on."
    #notes_footnote_link(
      "https://x.com/karpathy/status/2035173492447224237",
      "Andrej Karpathy, 2026",
      "",
    )
  ]
]
// =====================================================================================================================

#notes_slide(title: [Code Generation is NOT Software Engineering #comment-tag()], group: "code-generation")[

  #notes_quote(
    title: "Reports of code's death are greatly exaggerated",
    details: [\ Steve Krouse],
  )[
    "#bold[Programming, like writing, is an activity, where one iteratively sharpens what they're doing as they do it.]

    #indent()... But, #bold[vibe coding gives the illusion that your vibes are precise abstractions]. They will feel this way right up until they leak, which will happen when you add enough features or get enough scale. #bold[Unexpected behaviors (bugs) that emerge from lower levels of abstraction that you don't understand] will sneak up on you and wreck your whole day."
    #notes_footnote_link(
      "https://stevekrouse.com/precision",
      "Reports of code's death are greatly exaggerated",
      "Steve Krouse, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Code Generation is NOT Software Engineering #comment-tag()], group: "code-generation")[
  #set text(size: 19.5pt)

  #notes_quote(
    title: "Code Is Cheap Now. Software Isn't",
    details: [\ Chris Gregori],
  )[
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

#notes_slide(title: [Code Generation is NOT Software Engineering #comment-tag()], group: "code-generation")[

  #notes_quote(
    title: "Benj Edwards",
    details: [\ Ars Technica],
  )[
    "Creating durable production code, managing a complex project, or crafting something truly novel still requires experience, patience, and skill beyond what today's AI agents can provide on their own.

    #indent() ... veteran software developers probably shouldn't fear losing their jobs to these tools any time soon. #bold[In fact, they may become busier than ever].

    #indent() ... I don't think AI tools will make human software designers obsolete. Instead, they may well help those designers become more capable."
    @benj_edwards
  ]
]

// =====================================================================================================================

//#notes_slide(title: "Code Generation is NOT Software Engineering", number: "3/3")[
// Crafting the Code You Don’t Write: Sculpting Software in an AI World - Daisy Hollman - CppCon 2025
//https://www.youtube.com/watch?v=v6OyVjQpjjc
//]

// =====================================================================================================================

== The Role of Human Expertise

#notes_slide(title: [The Role of Human Expertise #comment-tag()], group: "human-expertise")[

  - #bold[AI systems complement human expertise. They do not substitute for it.]

  #notes_quote(
    title: "The skeptic's guide to generative AI assisted coding",
    details: [\ Rob Patro],
  )[
    "What the models do, the capabilities they have, and the quality of the content they produce is, to a large extent, #bold[a reflection of the user]."
    #notes_footnote_link(
      "https://combine-lab.github.io/blog/2026/02/15/a-skeptics-guide-to-generative-ai-coding.html",
      "The skeptic's guide to generative AI assisted coding",
      "Rob Patro, combine-lab, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [The Role of Human Expertise #comment-tag()], group: "human-expertise")[

  #notes_quote(
    title: "Benj Edwards",
    details: [\ Ars Technica, 2026],
  )[
    "#bold[Experienced human software developers bring judgment, creativity, and domain knowledge that AI models lack]. They know how to architect systems for long-term maintainability, how to balance technical debt against feature velocity, and when to push back when requirements don't make sense.

    #indent() ... They can automate many tasks, but #bold[managing the overarching project scope still falls to the person telling the tool what to do]." @benj_edwards
  ]
]

// =====================================================================================================================

#notes_slide(title: [The Role of Human Expertise #comment-tag()], group: "human-expertise")[

  #notes_quote(
    title: "The End of the Coder?",
    details: [\ Communications of the ACM, 2026],
  )[
    "Expertise has always been marked by a deep knowledge of software qualities and how they are achieved through implementation; #bold[understanding architectural complexity]\; capacity to continuously learn and change practices; providing credible, honest, trustworthy information, and a long tail of other soft skills.

    #indent() ... As today's frontier models and their successors take over the keyboard, the human engineer's most important tool is no longer the integrated development environment; #bold[it is their judgment.]"
    #notes_footnote_link(
      "https://cacm.acm.org/news/the-end-of-the-coder/",
      "The End of the Coder?",
      "L. Kugler, Communications of the ACM, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [The Role of Human Expertise #comment-tag()], group: "human-expertise")[

  #notes_quote(
    title: "Benj Edwards",
    details: "Ars Technica",
  )[
    #indent() "Knowing something about how good software development works helps a lot when guiding an #bold[AI coding agent---the tool amplifies your existing knowledge rather than replacing it]." @benj_edwards
  ]

  #v(20pt)
  #notes_quote(
    title: "Simon Willison",
    details: "Vibe engineering",
  )[
    "#bold[AI tools amplify existing expertise]. The more skills and experience you have as a software engineer the faster and better the results you can get from working with LLMs and coding agents." @simon_willison
  ]
]

// =====================================================================================================================

#notes_slide(title: [The Role of Human Expertise #science-tag()], group: "human-expertise")[

  #notes_quote(
    title: "Redefining the Software Engineering Profession for AI",
    details: [\ Communications of the ACM, 2026],
  )[
    "Relying too much on AI risks missing subtle bugs, architectural flaws, and vulnerabilities that only skilled engineers can catch. #bold[Human oversight, critical thinking, and domain knowledge are indispensable] for both correcting errors and driving innovation as technology progresses.

    #indent() Generative AI currently acts as seniority-biased technological change: #bold[It disproportionately amplifies engineers who already possess systems judgment], like a taste for architecture, debugging under uncertainty, and operational intuition."
    #notes_footnote_link(
      "https://dl.acm.org/doi/pdf/10.1145/3779312",
      "Redefining the Software Engineering Profession for AI",
      "Russinovich & Hanselman, Communications of the ACM, 2026",
    )
  ]
]


// =====================================================================================================================

#notes_slide(title: [The Role of Human Expertise #science-tag()], group: "human-expertise")[

  #notes_quote(
    title: "'AI makes me 10x productive', 'AI produces garbage'",
    details: [\ Michael Rothrock, 2026],
  )[
    "LLMs have evolved into enormously powerful engines that can produce vast amounts of artifacts. However, #bold[they need to be guided to produce output that is actually #notes_underline[valuable]]. Without this, they can produce a mountain of garbage just as easily as gold.

    ... The fluency of the AI makes it easy to think you should interact with it like you would a junior engineer. #bold[The best output comes from realizing that it is a machine that produces code and executes tasks], and you should treat it as such."
    #notes_footnote_link(
      "https://michael.roth.rocks/research/543-hours",
      "'AI makes me 10x productive', 'AI produces garbage'",
      "M. Rothrock, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [The Role of Human Expertise #comment-tag()], group: "human-expertise")[

  #notes_quote(
    title: "Eight years of wanting, three months of building with AI",
    details: [\ L. Maganti, 2026],
  )[
    "When I was working on something I already understood deeply, #bold[AI was excellent]. I could review its output instantly, catch mistakes before they landed and move at a pace I'd never have managed alone.

    #indent() ... When I was working on something I could describe but didn't yet know, #bold[AI was good but required more care].

    #indent() ... When I was working on something where I didn't even know what I wanted, #bold[AI was somewhere between unhelpful and harmful].

    #indent() ... But expertise alone isn't enough. Even when I understood a problem deeply, #bold[AI still struggled if the task had no objectively checkable answer]
    #notes_footnote_link(
      "https://lalitm.com/post/building-syntaqlite-ai/",
      "Eight years of wanting, three months of building with AI",
      "L. Maganti, 2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [The Role of Human Expertise #comment-tag()], group: "human-expertise")[

  #notes_quote(
    title: "Chatting with an AI Won't Make You a Top Programmer",
    details: [\ D. Lemire, 2026],
  )[
    "The Google engineer paid a million dollars was never a machine that produces code. #bold[Nobody actually wants code, any more than they want raw text].

    #indent() In fact, I predict a bifurcation in the tooling. The best engineers will work with tools that maximize their understanding of the code. I believe that reading and writing code, at a high level, is more like studying Socrates than like cursive writing. It is a necessary mental labor that does not become obsolete just because we have better tools for generating output."
    #notes_footnote_link(
      "https://lemire.me/blog/2026/06/21/chatting-with-ai-wont-make-you-a-top-programmer/",
      "Chatting with an AI Won't Make You a Top Programmer",
      "D. Lemire, June2026",
    )
  ]
]

// =====================================================================================================================

#notes_slide(title: [Plausibility over Correctness #comment-tag()])[

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

#notes_slide(title: [Engineering Practices in the Age of AI], group: "engineering-practices")[

  #bold[LLMs reward existing software engineering practices.] The following list presents a concise set of practices through which AI systems can enhance the software development process. This list has been compiled from engineers' public notes, discussions with colleagues, and personal experience.

  #set list(spacing: 30pt)
  - #bold[Code Review]. LLMs rely on pattern matching and memorization. They can be very effective at finding common issues, faulty logic, or missing assumptions in code. _This is not a substitute for human code review_.

  - #bold[Documentation]. Writing documentation is essential for understanding and maintaining software, but it is often a time-consuming and boring task. LLMs can help write documentation, or a draft, quickly, _to review and refine later_.

  - #bold[Code Explanation]. LLMs can parse code much faster than humans. As a result, they can be very useful for explaining code in context or for understanding the organization and workflow of large codebases.
]

// =====================================================================================================================

#notes_slide(title: [Engineering Practices in the Age of AI], group: "engineering-practices")[

  #set list(spacing: 40pt)
  - #bold[Prototyping]. Productization is the most demanding phase of the development process, and it requires a clear idea of what to achieve, which is often not the case. LLMs can be very effective at quickly implementing new features or ideas, _even if the quality is far from production-ready_.

  - #bold[Discussing Ideas and Intuitions]. It is common to reflect on new ideas or revisit earlier ones when thinking through specific aspects of a problem. LLMs can discuss these topics much as a coworker might, even before prototyping.

  - #bold[Evaluating Alternatives]. There are dozens of ways to solve a given problem. LLMs can suggest alternatives that users can evaluate and then select the most suitable option _depending on the context_.
]

// =====================================================================================================================

#notes_slide(title: [Engineering Practices in the Age of AI], group: "engineering-practices")[

  #set list(spacing: 40pt)
  - #bold[Enforcing Coding Style]. Large codebases involving several engineers tend to develop high-level practices that are often difficult to enforce with common tools. Coding style can fall into this category. Requirements such as "the code shall not use lambda expressions" are difficult to enforce with traditional tools but trivial for LLMs.

  - #bold[Testing]. Robust and comprehensive test suites prevent users _and LLMs_ from unintentionally introducing bugs. Additionally, LLMs can quickly draft tests that can be adjusted later.

  - #bold[Refactoring]. Technology evolves faster than engineers can keep up with, especially in projects with limited engineering resources. LLMs are an excellent tool for modernizing codebases, but it is important to pay attention to _maintaining the underlying logic_.
]

// =====================================================================================================================

#notes_slide(title: [Engineering Practices in the Age of AI], group: "engineering-practices")[

  #set list(spacing: 40pt)
  - #bold[Debugging]. LLMs can automate the debugging process, especially for simple bugs. They can compile, execute, analyze the output, or even navigate the `git` history and find connections in the code to identify problems or formulate hypotheses.

  - #bold[Vibe Coding Tools]. It is common to face limitations with open-source tools because each project has its own specific context. Engineering work often does not leave time to contribute to external projects to overcome these limitations. LLMs can implement small features while engineers stay focused on the actual code. One example could be adding a new check to `clang-tidy`.

  - #bold[Help with Unfamiliar Tasks]. It is common to work on projects outside area of expertise. For example, LLMs can assist by explaining new syntax and translating between languages.
]

// =====================================================================================================================

#notes_slide(title: [Engineering Practices in the Age of AI], group: "engineering-practices")[

  - #bold[Git Interaction]. LLMs show excellent capabilities when working with `git`. They can navigate history, reverse changes, and identify the root causes of bugs. They can also handle complex rebases without human intervention.
]

<p2e>
