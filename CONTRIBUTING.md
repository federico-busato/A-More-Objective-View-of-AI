# Contributing to A More Objective View of AI

Thank you for your interest in contributing to **A More Objective View of AI**! These notes are open-source and welcome contributions from the community.

## How to Contribute

### Reporting Issues

If you find any **typos**, **conceptual errors**, **broken links**, or **sections to improve**, please open an issue using the [Issues](https://github.com/federico-busato/A-More-Objective-View-of-AI/issues) panel. Include:

- The chapter and slide number (or topic).
- A clear description of the problem.
- A suggested fix, if you have one.

### Direct Contributions via Pull Requests (preferred)

The course slides are authored in [Typst](https://typst.app/). You can contribute directly by modifying the Typst source files and submitting a pull request.

## Project Structure

The Typst sources are located in the [`typst/`](https://github.com/federico-busato/A-More-Objective-View-of-AI/tree/main/typst) directory of the [A-More-Objective-View-of-AI](https://github.com/federico-busato/A-More-Objective-View-of-AI) repository:

```
typst/
├── config.typ                 # Shared macros and theme configuration
├── 01.notes_on_AI.typ         # Chapter 1 source
├── 01.notes_on_AI/            # Chapter 1 material
├── 02.notes_on_AI.typ         # Chapter 2 source
├── 02.notes_on_AI/            # Chapter 2 material
├── ...
```

Each chapter consists of:

- A **`.typ` file** (e.g., `01.notes_on_AI.typ`) containing the slide content.
- A **directory** with the same base name (e.g., `01.notes_on_AI/`) containing images and other assets used by that chapter.

## Setting Up the Environment

### Install Typst

Install `Typst` by following the [official instructions](https://github.com/typst/typst#installation). You can install it via:

- **CLI**: `cargo install typst-cli` (requires Rust), or download a prebuilt binary from [releases](https://github.com/typst/typst/releases).
- **Web app**: [typst.app](https://typst.app/) for quick editing (no local setup needed).

### Required Fonts

The following fonts must be installed on your system for local compilation:

- [Latin Modern Sans](https://www.fontsquirrel.com/fonts/Latin-Modern-Sans)
- [Latin Modern Mono](https://www.fontsquirrel.com/fonts/Latin-Modern-Mono)
- [Latin Modern Roman Caps](https://www.fontsquirrel.com/fonts/latin-modern-roman) (part of the Latin Modern family)
- [Font Awesome 6 Free](https://fontawesome.com/download) (`Free-Regular-400.otf`)

### Typst Packages

The project uses several `Typst` packages which are automatically resolved on compilation. The presentation framework used for draw the slides is [`touying`](https://typst.app/universe/package/touying).

### Editor Setup (VS Code / Cursor)

The recommended way to work with `Typst` sources is through [VS Code](https://code.visualstudio.com/) or [Cursor](https://www.cursor.com/) with the [Tinymist](https://myriad-dreamin.github.io/tinymist/frontend/vscode.html) extension:

1. Install `Typst` (see [Install Typst](#install-typst) above) — Tinymist requires a local Typst installation.
2. Install the `Tinymist` Typst extension from the [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) (also available on [Open VSX](https://open-vsx.org/extension/myriad-dreamin/tinymist) for Cursor).
3. Open any `.typ` file to get syntax highlighting, autocompletion, error diagnostics, and live preview.

`Tinymist` provides:

- **Live PDF preview** directly in the editor.
- **Autocompletion** for Typst syntax, symbols, and packages.
- **Error diagnostics** and linting as you type.
- **Outline view** for navigating the document structure.
- **Content view** with slide thumbnails (useful for this project).

See the [Tinymist documentation](https://myriad-dreamin.github.io/tinymist/) for full configuration options.

### Compiling from the Command Line

To compile a chapter to PDF:

```bash
typst compile typst/01.notes_on_AI.typ
```

To watch for changes and recompile automatically:

```bash
typst watch typst/01.notes_on_AI.typ
```

## Contribution Guidelines

### Content Changes

- **Fix typos and grammar**: straightforward corrections are always welcome.
- **Improve explanations**: if a concept could be explained more clearly, feel free to rephrase.
- **Include references**: when adding or improving content, cite authoritative sources to strengthen the argument, improve reliability, and give proper attribution.

### Style Conventions

- Keep slides **concise and non-verbose**.

### Pull Request Process

1. **Fork** the [A-More-Objective-View-of-AI](https://github.com/federico-busato/A-More-Objective-View-of-AI) repository.
2. **Create a branch** with a descriptive name (e.g., `fix/ch01-typo`).
3. **Make your changes** to the `Typst` source files.
4. **Verify** that the modified chapter compiles without errors.
5. **Submit a pull request** with a clear description of what you changed and why.

### What We Look For in PRs

- Changes compile cleanly with `typst compile`.
- Slide content remains concise and follows the existing style.
- New images are placed in the correct chapter directory.

## AI / LLM Policy

**AI-generated content is not allowed.** All contributed text, code examples, explanations, and images must be authored by the contributor. This applies to content produced by ChatGPT, Copilot, Claude, or any other generative AI tool.

AI tools **may** be used for:

- Reviewing and proofreading (spelling, grammar, typos).

Contributors must **understand and be able to explain** every change they submit. Pull requests that appear to be bulk AI-generated content will be rejected.

## License

By contributing, you agree that your contributions will be licensed under the same terms as the project:

- **Course content** (slides, text, images): [CC BY-SA 4.0](LICENSE-CC-BY-SA.md)
- **Code examples**: [MIT License](LICENSE-MIT.md)
