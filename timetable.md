# Development timetable

-   4 weeks: Extend a GitHub Javascript API wrapper to work with GitLab.
    Considering <https://github.com/philschatz/octokit.js,> whose main author, Philip Schatz,
    approves the change <https://github.com/michael/github/issues/68#issuecomment-21601050> and is linked to the OER movement.

-   4 weeks: Create an API based Javascript merge conflict resolution tool
    that works on GitHub and GitLab using the API wrapper.
    The feature lacks in both systems, and is a key blocking point for usage without the command line.

-   4 weeks: Modify Marked <https://github.com/chjj/marked> to:

    - produce LaTeX output (new renderer)
    - take multiple input files and make one output.
    - allow easy backward and forward search.

    Marked is a good choice because it is Js based and runs both on the browser and locally via Node.js,
    and we need a Js compiler to do preview as you type on the browser.

-   4 weeks: Create / modify a content editor to work with GitHub and GitLab API using the API wrapper.
    Prose <https://github.com/prose/prose> and OERPUB's GitHub book editor <https://github.com/oerpub/github-bookeditor>
    possible starting points.

    Add important missing features like side-by-side preview as you type and a file browser if necessary.
    GitHub and GitLab do have a web editor, but since they are not focused on publishing
    it not good enough for this purpose, and the preview is not necessarily compatible
    with the compiler back-ends we support.

-   2 weeks: Chose and make the CI compiler service work live.
    Currently considering Drone <https://github.com/drone/drone>
    Non-trivial install, but should already work with GitLab out of the box.

-   3 weeks: Integrate all system's web interfaces (API done on other items already)
    by adding links between them, e.g. from GitLab to the editor and the merge resolution tool.
    Make minor teaks to the GitLab interface to adapt if for book development:
    replace Git jargon with simpler words.
    Suggest a template that works well with the default compilation system at project creation.

-   3 weeks: Document the system using itself.
