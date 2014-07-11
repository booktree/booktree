# Non-features

Features which we do not want in this project:

-   WYSIWYG editor. Does not play well with Markdown and diffs.

    If you want to write useful text, you *must* understand the underlying format,
    which in the case of Markdown takes 10 minutes for the basics.

-   Formatting options like CSS to tweak the generated output.

    Uniformity of content benefits everyone as it makes it easy to understand where things are,
    and to copy paste things across books.

    Furthermore, such options are very hard to implement consistently across HTML and PDF outputs.

-   Wiki and Snippets. GitLab and GitHub have them, but they duplicate too much of repository functionality,
    so those features will not be in Booktree.

    Instead, we may consider features that make repositories look more like them, such as:

    - allowing a repository to be edited by anyone, which is the key wiki feature
    - showing the content of all files int the repository on the front page, they key snippet feature.
