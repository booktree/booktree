The CONTRIBUTING guidelines of each forked project apply unless stated otherwise
here or on the `CONTRIBUTING_FORK` of the project.

Currently we are **only merging back to GitLab**, while discussing what needs to be done.
This means that we are only implementing ACCEPTING MR issues from:
<http://feedback.gitlab.com/forums/176466-general/status/796455>
Only if GitLab stops accepting key features for this project will we fork.

# Issues

If an issue applies only to a particular repository, open it in that repository.

If you are not sure what it applies to, open it on this repository.

# Labels

-   `bug`

-   `duplicate`

-   `enhancement`: requests that something be modified,
    although it is not clearly broken as in a `bug`.
    Sometimes the difference between both is subjective.

    Labels that only apply to `enhancements`:

    - `accepting-pr`: the project admins endorse this `enhancement`,
        and will definitely take at submitted patches.
    - `howto`: the proposal needs to be made more precise before `accepting-pr`.
    - `dep`: there is another enhancement which needs to be implemented before this one.
    - `hard1`, `hard2`, `hard3`: expected implementation difficulty: low, medium, high.
    - `prio1`, `prio2`, `prio3`: importance of the feature: low, medium, high.
    - `wontfix`: feature request was declined.
    - `WIP`: work in progress: the pull request is not yet ready to be merged.

-   `question`: usage question for something that is already possible
    and so convenient it does not deserve a new feature.

-   `orig` prefixed labels give status of the request on the original project, e.g:

    - `orig-accepting-pr`: the original project has accepted the feature,
        and it is also particularly important for this project.
    - `orig-timeout`: 2 weeks passed without a favorable reply from Prose Team.
    - `orig-wontfix`: the original project declined the feature.
        It might still be acceptable in this project.

If you don't have the permission to add a label to your issue,
please add it to the title of the issue as:

    [WIP][hard2] Do something new.

If collaborators agree with the label, they will add it later on.

# Upvotes

Upvoting issues you like is encouraged.
Please only use the marker `+1` and keep a running count of upvotes as in:

    +1 1

Next upvote comment:

    +1 2

Next upvote comment:

    +1 3

And so on.

# Branches

Use the following branches:

- `origin`: original project.
- `mine`: this repo.

This weird use of `origin` instead of `upstream` is needed for the moment
to make some tests pass on GitLab.

Use feature branches for every modification.

# Merge requests

This project will attempt to:

- merge back any contributions which also make sense for the original projects it forks.
- merge every new stable version of the original projects into their forks.

Because we have slightly different design goals, some changes will not be merged back.

Files which differ entirely from their original projects
will be listed under `.gitattributes` with `merge=ours`.

## Where to submit

-   if your patch also makes sense for the original project:

    -   Do it on `origin`.

    -   Make a pull request directly to the original project.

    -   If the project's team either:

        - takes more than 2 weeks to acceptint-pr or show a favorable view
        - declines

        merge on `mine` and make a pull request to us with one of following labels respectively:

        - `timeout`
        - `wontfix`

    -   If it is accepted on the original project,
        it will become available for to our project when we merge to the next stable version.

-   if your patch only makes sense for the fork:

    - Do it on `mine`.

    - Add it to the `CHANGELOG_FORK` if the feature is considerable.

    - Pull request directly and only to this project.
