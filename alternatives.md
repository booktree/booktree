# Alternatives

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
