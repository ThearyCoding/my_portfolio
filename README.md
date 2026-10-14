# Chorn Theary — Portfolio

My personal portfolio website: a single-page site showing who I am, what I build, my tech stack and selected projects.

Built with [Jaspr](https://jaspr.site), a Dart web framework, running in client-side mode with plain CSS (no Flutter embedding, about 1 MB total build).

## Sections

| Section | What it shows |
| --- | --- |
| Hero | Intro, rotating roles, code-window visual, social links |
| About | Short bio and quick stats |
| Services | Mobile apps, web development, backend & APIs, cloud & integrations |
| Skills | Scrolling tech ticker and skill categories |
| Projects | NW KH (App Store / Google Play) and Grocery App (GitHub) |
| Process | How I work: Discover → Design → Build → Launch |
| Contact | Email, LinkedIn and GitHub |

## Tech

- [Jaspr](https://pub.dev/packages/jaspr) 0.23 (Dart)
- Plain CSS in `web/styles.css` (dark theme, gradients, animations, responsive)
- Inline SVG icons, Google Fonts (Inter, Space Grotesk, JetBrains Mono)

## Requirements

- [FVM](https://fvm.app) — the project pins Flutter **3.47.5** (Dart 3.13) in `.fvmrc`.
  The Jaspr 0.23 CLI needs Dart 3.11 or newer.
- Jaspr CLI, installed with the FVM Dart:

```bash
fvm install
fvm dart pub global activate jaspr_cli
```

> Always run the CLI through `fvm dart`. Running plain `jaspr` with an older global Dart
> reinstalls the old 0.22 CLI, which fails with *"Incompatible jaspr dependency"*.
> Optional shortcut in `~/.zshrc`:
>
> ```bash
> alias jaspr='fvm dart pub global run jaspr_cli:jaspr'
> ```

## Running locally

```bash
fvm dart pub get
fvm dart pub global run jaspr_cli:jaspr serve
```

Open <http://localhost:8080>. Save a file and refresh to see changes. Stop with `Ctrl + C`.

## Building

```bash
fvm dart pub global run jaspr_cli:jaspr build
```

The static site is written to `build/jaspr/` and can be hosted on GitHub Pages, Netlify, Vercel or Firebase Hosting.

## Project structure

```
lib/
  main.client.dart      # entrypoint
  app.dart              # page layout: nav, sections, footer
  sections/             # one file per section (hero, about, services, ...)
  widgets/
    icons.dart          # inline SVG icons
    project_card.dart   # project card
web/
  index.html            # HTML shell, fonts, scroll-reveal script
  styles.css            # all styles
  images/               # project logos
```

## Updating content

- **Add a project:** add a `ProjectCard(...)` in `lib/sections/projects.dart` and put its logo in `web/images/`.
- **Edit skills:** change the lists in `lib/sections/skills.dart`.
- **Change colors:** edit the variables at the top of `web/styles.css` (`--violet`, `--blue`, `--cyan`, ...).

## Contact

- Email: chorntheary12@email.com
- LinkedIn: [chorn-theary](https://www.linkedin.com/in/chorn-theary-22b191332)
- GitHub: [@ThearyCoding](https://github.com/ThearyCoding)
