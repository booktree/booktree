# 2015-01 Why Ciro has stopped working on Booktree

Ciro has found a full job and stopped working on Booktree. He is still watching the market however, waiting for a chance to come back in.

-   teachers are simply not yet very interested in writing perfect collaborative books.

    Many teachers prefer to keep their little books private in fear that others will take credit for it (and in the end, no one gets much credit or profit from it), and others simply prefer, or are forced to, orally repeat information year after year.

    And if they were interested, they would already use (imperfect, but acceptable) existing tools.

    Therefore, this is as much a society / marketing problem as it is a technical one.

-   increasing competition in the domain from closed source alternatives like O'Reilly Atlas, GitBook and Penflip.

    As it is often the case, closed source is taking the lead.

-   high cost associated to working with GitLab.

    GitLab is a reasonably good software, and the best open source Git front-end available, but:

    - Git is an inherently costly backend to work with, and I was not yet taking advantage of it's major feature: the possibility to work locally, which requires you to settle for a compiler engine and provide a good local editor. GitBook for example is taking this path, with it's local Markdown editor.
    - GitLab could be more careful about code quality. E.g., I have seen quite a few non-DRYness that should not have been accepted in the code base, and too many unrelated CI failures.
    - GitLab takes a long time to review pull requests. Not blaming them, since my priorities and theirs are not the same, but it is highly discouraging to make non-trivial pull requests as they take months to be reviewed, including those marked as Accepting Merge Requests.
