This is a detailed list of features necessary to implement the desired functionality.

Only differences from GitLabHQ will be listed.

Items are in increasing importance / difficulty ratio, so if you want to contribute it is recommended that you tackle the first points first.

Also check to see the current implementation state before starting one of your own.

Intended features include:

- creation of lists of material.

    The lists can contain:

    - local URLs to projects on the format: `user/project`

    - local URLs to files on the format: `user/project/<VERSION>/file.md`,
        for example `user/project/master/file.md`,

    - local URLs to files including specific ids of sections on the format:

        `user/project/<VERSION>/file.md#id`

        IDs can be set via:

        - latex `\label`
        - html `id` attributes

        Every section should have an unique ID.

        If a section has no ID, it is assumed to be the section title modified as such:

        - every character is converted to lowercase

        - every character that is not either alphanumeric (`A-Za-z0-9`) or a hyphen (`-`)
            is converted to a hyphen.

    - ISNB URNs for non-open source books of the form `isbn:1234567890`.

        IDs can also be used.

    - for other external sources without ISBN, the book download URL link that produces the material can be used,
        but note that this may not be very stable with time and not unique.

    Users must be able to add metadata to single links.
    This could arbitrarily created by the user, or selection from a fixed range of metadata.
    One important use case for this is marking links as optional.

- allow teachers to filter only issues by their students, related to their course material.

    This way teachers can do their obligation (answer questions by their students), while at the same time answering potential questions of every other student in the world.

- add simple upvote metrics to issues, answers and users.

    Allow to sort issues and answers by vote counts.

    Show on the user's homepage how many upvotes he has on repositories,
    issues and replies.

- add simple tagging capabilities.

    Users should be able to create tags themselves.

    TODO how to make people agree on what a tag means?
        A simple solution is to put tags under username namespace.

- decide on a markup that can produce both PDF and HTML and integrate it.

    It is desirable that the markup be extensible, that is, it has a standard mechanism to create new commands,
    just like Latex does via `\newcommand`.

- generate local viewable downloadable versions PDF / HTML versions of:

    - lists of material
    - projects

    This is specially complicated for PDF,
    since it is not yet simple to have inter PDF links.

    The most stable solution today is to make one large PDF.

- allow material lists to be extracted from the markup language via a special markup function.

    For example, if the language decided upon is a markdown flavor, all a user has to do to create a new
    material lists is to write something like:

        %material-list-begin%
            [a](link): this is very important.
            [b](link2): this is cool.
            [c](link2){optional=true}: this is nice, but a bit hard.
            [c](link2){material-list-exclude}: this is not on the list.
        %material-list-end%

    This way, the user can create a commented index at the same time as he produces a material list.
