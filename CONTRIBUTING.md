# Contributing guidelines

The CONTRIBUTING guidelines of each forked project apply unless stated otherwise
here or on the `CONTRIBUTING_FORK` of the project.

## Process

Only issues which have been marked labeled as
[accepting-pr](https://github.com/booktree/booktree/labels/accepting-pr)
will be considered for inclusion.

Currently, for GitLab related issues, **we are only merging back**, while discussing what needs to be done.
This means that we are only mark as `accepting-pr` on issues which GitLab has marked as `accepting-mr`:
<http://feedback.gitlab.com/forums/176466-general/status/796455>
Only if GitLab stops accepting key features for this project will we fork.

We are filtering all feature requests that matter to this project in
[our issue tracker](https://github.com/booktree/booktree/issues?state=open).
This includes both issues from GitLab, which are marked with the
[GitLab label](https://github.com/booktree/booktree/labels/gitlab)
and other issues.

If you have an idea, feel free to submit it here for discussion.
If it applies to a project we use like GitLab, open an issue on that project,
and create an issue here that only links to it.
The discussion will be centralized on the original project to start with.
We should first try to convince the original project to accept the feature before forking it.

## Labels

-   `bug`

-   `duplicate`

-   `enhancement`: requests that something be modified,
    although it is not clearly broken as in a `bug`.
    Sometimes the difference between both is subjective.

    Labels that only apply to `enhancements`:

    - `accepting-pr`: the feature is well defined and important.
        Project admins will definitely take at submitted patches.
        This is where you should look for things to work on.
    - `howto`: the proposal needs to be made more precise before `accepting-pr`.
    - `has-dependency`: there is another enhancement which needs to be implemented
        before this one.
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

Project labels:

-   `gitlab`
-   `github`: on enhancements, means the feature is not present on GitHub

If you don't have the permission to add a label to your issue,
please add it to the title of the issue as:

    [WIP][hard2] Do something new.

If collaborators agree with the label, they will add it later on.

## Upvotes

Upvoting issues you like is encouraged.
Please only use the marker `+1` and keep a running count of upvotes as in:

    +1 1

Next upvote comment:

    +1 2

Next upvote comment:

    +1 3

And so on.

## Branches

Use the following branches:

- `origin`: original project.
- `mine`: this repo.

This weird use of `origin` instead of `upstream` is needed for the moment
to make some tests pass on GitLab.

Use feature branches for every modification.

## Merge requests

This project will attempt to:

- merge back any contributions which also make sense for the original projects it forks.
- merge every new stable version of the original projects into their forks.

Because we have slightly different design goals, some changes will not be merged back.

Files which differ entirely from their original projects
will be listed under `.gitattributes` with `merge=ours`.

### Where to submit

-   if your patch also makes sense for the original project:

    -   Do it on `origin`.

    -   Make a pull request directly to the original project,
        and create an issue on this project pointing to it.

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
