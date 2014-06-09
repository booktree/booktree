Similar projects and features which they lack.

Systems are closed source unless noted otherwise.

Big wiki comparison table at: <https://github.com/cirosantilli/booktree/wiki/Alternatives>

- [GitHub](https://github.com): no PDF output and sale, CLI-free workflow very limited (no `commit --amend`, `git add`, etc.). Has mentioned interest in book development.

- [Penflip](https://www.penflip.com). Markdown input. Git based: offers clone URL,
    but not local compilation tools. Simplified Git web including merge requests.
    TODO: what is their web interface based on?

- [O'Reilly Atlas](https://atlas.oreilly.com/) Git + GitLab backend.
    HTML WYSIWYG editor or Markdown input. Generates PDF from HTML.
    No merge requests, commit messages, commit list.
    [No local compilation](http://forum.atlas.oreilly.com/t/is-is-possible-to-compile-books-locally/11/3):
    input format is [O'Reilly's HTMLBook](https://github.com/oreillymedia/HTMLBook), to which Markdown is converted.
    HTMLBook is open source and readable on browsers, but there are currently free solutions for PDF conversion.
    Service free for only 30 days.

-   [OERPUB](http://oerpub.org/collaborate) is building the open source:

    - [GitHub book editor](https://github.com/oerpub/github-bookeditor): a web editor that saves to GitHub via the API.
    - [pdf-ci](https://github.com/philschatz/pdf-ci): PDF compilation on push via GitHub hooks.

    These two tools are part of what we want to build,
    but we feel that using GitLab instead of GitHub is the way to go
    because it allows us to adapt the web frontend code and interface with it more tightly.

- [ShareLaTeX](https://www.sharelatex.com). Open sourced early 2014.
    Lacks: Markdown input, HTML output, versioning on free tier,
    no merge requests (real time focused), hidden Git back-end,
    [at least 94k users](https://twitter.com/henryoswald/status/459367445946707968).

- [WriteLaTeX](https://www.writelatex.com). No Markdown, branches or merge requests, closed source.

- [Inkling Habitat](https://habitat.inkling.com). WYSIWYG editor, versioning, issue tracker.
    Browser plugin (currently no Firefox). 50M investments between 2009 and 2014,
    9 collaborators (multiple products).

- [Authorea](https://www.authorea.com). Markdown and LaTeX input.
    Git backend as it shows hashes on URLs. Basic versioning.
    No pull requests, HTML output issue tracker.

- [Beegit](https://beegit.com/). Private beta, waiting for review.
    Deducing from presentation video: Markdown input, multi file project,
    version control, file browser. Possibly GitLab based. 3 collaborators.

- [Draft](https://draftin.com). Markdown input, single file input/output only.
    Limited version control and merge request-like functionality.

- [Connexions](http://cnx.org/). Open source, no Markdown.

- [prose.io](https://github.com/prose/prose). GitHub + GitHub Pages editor frontend. Open source.

- [Leanpub](https://leanpub.com). No LaTeX, book sale.

- [Softcover](https://softcover.io). No editing web interface.
    Open source compiler, web interface closed. Book sale.

- [Blurb](http://www.blurb.com/company-profile).
    Downloadable editors for Windows / Mac, not possible to create book for free.

- [guides.co](http://www.guides.co). WYSIWYG editor, sell on Amazon.

- [PressBooks](http://pressbooks.com/). WordPress based. WYSIWYG HTML input, PDF, EPUB output.

Discontinued projects:

- [Banyan](https://banyan.co): seems to do exactly the same as this project via GitLab.
    Waiting for them to open public beta (signup currently disabled) to review.
    A third party informed me that they have discontinued.

- [Editorially](https://editorially.com). Markdown input. Shut down May 30 2014.
