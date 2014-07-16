# Booktree Project

**Book Development** with **Version Control**

<img alt="logo" src="logo.png" width="256"></img>

**Mission**:

- increase the quality / price ratio of textual learning material: textbooks, papers, tutorials.
- motivate readers (students) to learn by contributing.

[Presentation video](https://www.youtube.com/watch?v=8MA-0_ZWmlY). (partially outdated).

[What has been done by this project so far](achievements.md).

[History of the project](history.md).

**Status**: under development. Not yet usable by end users.

## Intro for programmers

-   **GitHub clone**
-   optimized for **book development and publishing** through [these features](#intended-features)
-   accessible to **non programmers**
-   powered by **[GitLab](https://github.com/gitlabhq/gitlabhq)**,
    the best open source GitHub clone:
    - [GitHub top 30 by stars](https://github.com/search?p=3&q=stars%3A%3E10000&ref=searchresults&type=Repositories)
    - [6 people working full time with service revenue](https://www.gitlab.com/about/)
    - [Feature set close to GitHub](https://www.gitlab.com/features/)

The project is modularized for maximum reuse. See the [Architecture](#architecture) section.

## Intro for non-programmers

- **create**: edit and compile **markdown / Latex** input **online or locally**
- **publish**: share **HTML / PDF / EPUB** online **with one click**
- **sell**: set the price, buyers **pay**

with **Version control** because we adapted:

- IT industry **collaboration** techniques **Git** + **Bugtracker**
- to **non programmer** book developers

[Read this if you are not familiar with version control (Git, SVN, Mercurial).](version-control-intro.md)

[Use this if you want to convince policy makers to fund this idea.](politics.md)

## Use cases

-   **students and teachers** will be motivated to improve the books they are using,
    and create tutorials themselves to help their peers and get **recognition and jobs**.

    Questions can be answered on issues only once, where they can be found by future
    learners. Closing issues motivates users to improve the text to prevent future
    users from even having the doubt.

-   **researchers** can collaborate, publish and get metrics on their papers more efficiently,
    freeing them from publishers who give them nothing in return but a brand.

## Rationale

-   The current coding / project management workflow is close to **optimal** for creation of code.

    Version control used for **every single** serious software project today.

    GitHub, a popular web interface had 3M users and **100M $** investment in 2012.

    Version control has helped the creation of open source libraries developed by thousands
    and used by millions, such as **Firefox, the Linux kernel, GCC, jQuery**, and many more.

    Books are **very similar** to code, but their development process is still on the **paper age**.

    We can **reuse** much of the existing coding infra structure to develop books and manage classes.

-   There are other projects which have **insufficient subsets** of what must be done,
    some of which are already financially bootstrapped.

    Because of our code reuse, we can offer a better product than them.

-   **Specializing in books** means that we can compile the books ourselves
    since there are few possible input / output types, allowing:

    - users to develop from the web UI without installing anything
    - users to sell the compiled output from our website

-   Books have **lower costs** than videos to:

    - create
    - modify
    - search
    - transmit and store, because files are smaller
    - collaborate on

    A sequence of well chosen images is better than a video because
    it is easy to refer to one of the images.

## Business model

Optimize for world **happiness**:

-   if your project is:
    - **open source**, you get **all** features for **free**
    - **closed source**, you **may** have to **pay** based on repository size / number of compiles
-   **support**: we are **installable locally** for free and we sell **technical support**.
-   **book sale**. Authors can sell books, and we take a small percentage of their profit.
-   we will stay almost entirely **open source** forever, so that anyone can contribute with great features.

Planned development timetable at: [timetable.md](timetable.md).

## Intended Features

High level roadmap of features we intend to implement:

-   when users push or save from the web UI **markdown or LaTeX input**,
    we **compile and host HTML, PDF, EPUB output**.

-   Js editor with **side by side source / preview** view for individual files,
    compatible with the on push compiler.

-   **everything** can be done via the web interface:
    `mv`, `add`, `status`, `diff`, multi-file commits, revolve merge conflicts.

    Non programmers:

    - learn Git from the browser
    - don't need to install anything

-   writers can **set a price** for the compiled output, readers **pay** to have it.

-   **metrics for everything**: users, projects, groups, issues, comments, tags.

    Help people find the best material, and give the best contributors due credit.

For a detailed list of intended features, check
[the `accepting-pr` label of our issue tracker](https://github.com/booktree/booktree/issues?labels=accepting-pr&page=1&state=open).

For a list of features which we do *not* want see: [non-features.md](non-features.md).

For the system architecture that will allow us to achieve those goals see: [architecture.md](architecture.md).

## Alternatives

Similar projects and features which they lack.

Big feature set table at: <http://booktree.github.io/alternatives>

Systems are closed source unless noted otherwise.
We consider being open source a feature of this project,
since authors who care about open learning content will likely also
prefer to work on open source projects.

-   [GitHub](https://github.com): no PDF output and sale, CLI-free workflow very limited
    (no `commit --amend`, `git add`, etc.), no user metrics.

-   [Penflip](https://www.penflip.com). [GitLab based](https://twitter.com/madebyloren/status/468917323588698112)
    but has removed too much existing GitLab functionality, to have a simpler UI,
    making it less powerful than what this project aims to do: no branches, stats, graphs.
    issue votes, issue labels, etc. No local compilation tools.

    Markdown input, visible clone URL.

-   [O'Reilly Atlas](https://atlas.oreilly.com/).

    No merge requests, commit messages, commit list.

    [No local PDF compilation](http://forum.atlas.oreilly.com/t/is-is-possible-to-compile-books-locally/11/3):
    base input format is [O'Reilly's HTMLBook](https://github.com/oreillymedia/HTMLBook), to which Markdown is converted.
    HTMLBook is open source and readable on browsers, but there are currently free solutions for PDF conversion.
    Service free for only 30 days.

    GitLab based, since it uses https://github.com/oreillymedia/backbone-gitlab on the front-end.
    HTML WYSIWYG editor or Markdown input.

-   [OERPUB](http://oerpub.org/collaborate) is building the open source:

    - [GitHub book editor](https://github.com/oerpub/github-bookeditor):
        a web editor that saves to GitHub via the API.
    - [pdf-ci](https://github.com/philschatz/pdf-ci): PDF compilation on push via GitHub hooks.

    These two tools are part of what we want to build,
    but we feel that using GitLab instead of GitHub is the way to go
    because it allows us to adapt the web frontend code and interface with it more tightly.

-   [ShareLaTeX](https://www.sharelatex.com).
    No Markdown input, HTML output, versioning on free tier,
    no merge requests (real time focused), hidden Git back-end,

    Open sourced early 2014.
    [At least 94k users](https://twitter.com/henryoswald/status/459367445946707968).

-   [WriteLaTeX](https://www.writelatex.com). Similar to ShareLaTeX but closed source.

-   [Authorea](https://www.authorea.com). No pull requests, no HTML output, no issue tracker.

    Markdown and LaTeX input, no commit messages.

    Git backend as it shows hashes on URLs. Likely Rails, since `meta name=csrf-token`,
    and high <http://isitrails.com> score. So, it it GitLab or not =)?

-   [Beegit](https://beegit.com/). Beta, waiting for review multi user functions.

    No multi-file compilation, no PDF, no branches, no issues, no local compilation, no Git access.

-   [Inkling Habitat](https://habitat.inkling.com). WYSIWYG editor, versioning, issue tracker.
    Browser plugin (currently no Firefox). 50M investments between 2009 and 2014,
    9 collaborators (multiple products).

-   [Repositext](http://repositext.org/). Open source. Aims at doing several tools,
    including GitLab optimized for Markdown editing, like this project,
    but also things which this project does not aim to do such as Word and InDesign
    bidirectional conversions. Not clear what they have done so far:
    seems to be on an early stage but promising.

-   [Draft](https://draftin.com). Markdown input, single file input/output only.
    Limited version control and merge request-like functionality.

-   [Connexions](http://cnx.org/). Open source, no Markdown.

-   [Booktype](http://booktype-demo.sourcefabric.org/). [Open source](https://github.com/sourcefabric/Booktype),
    WYSIWYG, no merge requests, no diff, no commit messages, not Git access. Versions, PDF and HTML output.

-   [prose.io](https://github.com/prose/prose). GitHub + GitHub Pages editor frontend. Open source.

-   [Leanpub](https://leanpub.com). No LaTeX, book sale.

-   [Softcover](https://softcover.io). No editing web interface.
    Open source compiler, web interface closed. Book sale.

-   [Blurb](http://www.blurb.com/company-profile).
    Downloadable editors for Windows / Mac, not possible to create book for free.

-   [guides.co](http://www.guides.co). WYSIWYG editor, sell on Amazon.

-   [PressBooks](http://pressbooks.com/). WordPress based. WYSIWYG HTML input, PDF, EPUB output.

-   [Wikibooks](http://en.wikibooks.org): no permission control,
    less visibility to authors, no local compilation.

-   [Google Docs](https://docs.google.com): not possible to explicitly create versions:
    they automatically created at regular time intervals.

-   [Open Science Framework](https://osf.io). TODO

Discontinued projects:

-   [Banyan](https://banyan.co): seems to do exactly the same as this project via GitLab.
    Waiting for them to open public beta (signup currently disabled) to review.
    A third party informed me that they have discontinued.

-   [Editorially](https://editorially.com). Markdown input. Shut down May 30 2014.

## Contributing

If you want to contribute to this project, see the [CONTRIBUTING.md](CONTRIBUTING.md).
