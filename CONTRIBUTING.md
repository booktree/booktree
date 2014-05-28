The [GitLab guidelines](https://github.com/gitlabhq/gitlabhq/blob/master/CONTRIBUTING.md) apply unless stated otherwise.

# Labels

-   `bug`

-   `duplicate`

-   `enhancement`: requests that something be modified, although it is not clearly broken as in a `bug`. Sometimes the difference between both is subjective.

    Unlike GitLab, we treat feature requests in the GitHub issue tracker.

    Labels that only apply to `enhancements`:

    - `accepting-pr`: the project admins endorse this `enhancement`, and will definitely take at submitted patches.
    - `howto`: the proposal needs to be made more precise before `accepting-mr`.
    - `dep`: there is another enhancement which needs to be implemented before this one.
    - `hard1`, `hard2`, `hard3`: expected implementation difficulty: low, medium, high.
    - `prio1`, `prio2`, `prio3`: importance of the feature: low, medium, high.
    - `wontfix`: feature request was declined.
    - `WIP`: work in progress: the pull request is not yet ready to be merged.

-   `question`: usage question for something that is already possible and so convenient it does not deserve a new feature.

-   `gitlab` prefixed labels give status of the request on GitLab.

    - `gitlab-accepting-pr`: GitLab has accepted the feature, and it is also particularly important for this project.
    - `gitlab-timeout`: 2 weeks passed without a favorable reply from GitLab Team.
    - `gitlab-wontfix`: GitLab declined the feature. It might still be acceptable in this project.

If you don't have the permission to add a label to your issue, please add it to the title of the issue as:

    [WIP][hard2] Do something new.

If collaborators agree with the label, they will add it later on.

# Upvotes

Upvoting issues you like is encouraged. Please only use the marker `+1` and keep a running count of upvotes as in:

    +1 1

Next upvote comment:

    +1 2

Next upvote comment:

    +1 3

And so on.

# Install

Installation is very similar to that of GitLab itself. The recommended method for both production and development is to use the [Booktree Cookbook on metal](https://gitlab.com/cirosantilli/cookbook-gitlab/blob/master/doc/development_metal.md).

Like for the original GitLab, configuration files which vary across deployments are gitignored, given a Git tracked `.example` version, and installed by the cookbook via templates found under `templates/default`.

# Reset to initial state

To reset the state of the server to the initial state, use `bundle exec rake gitlab:setup`. This command is analogous to a `bundle exec rake db:reset`, and not `db:setup`: it destroys everything and then recreates initial state, including the repositories.

# Branches

Use the following branches:

- `origin`: original GitLab.
- `mine`: this repo.

This weird use of `origin` instead of `upstream` is needed for the moment to make some tests pass.

Use feature branches for every modification.

# Merge requests

This project will attempt to:

- merge back any contributions which also make sense for GitLab.
- incorporate every new version of GitLab

Because we have slightly different design goals, some changes will not be merged back.

Files which differ entirely from GitLab will be listed under `.gitattributes` with `merge=ours`.

We will merge GitLab stable releases into our system as soon as possible after a stable release comes out.

## Design goal divergences

Major points in which our design goals differ from GitLab include:

-   we give greater focus to a SaaS service rather than local installs.

    We intend to provide a service different enough from GitHub to be competitive.

    It is more advantageous to the world if all books can be found at single website.

    Local installs will still be supported.

-   we give greater focus to web interface Git and editing operations.

    We want non-programmers to use ours system, and therefore everything must be doable from the web interface.

## Where to submit

-   if your patch also makes sense for GitLab:

    -   Do it on `origin`.

    -   Add it to `CHANGELOG`.

    -   Make a pull request directly to GitLab on GitHub.

    -   If the GitLab Team either:

        - takes more than 2 weeks to acceptint-mr or show a favorable view
        - declines

        merge on `mine` and make a pull request to us with one of following labels respectively:

        - `gitlab-timeout`
        - `gitlab-wontfix`

    -   If it is accepted on GitLab, it will become available for to our project when we merge to the next stable version.

-   if your patch only makes sense for project:

    - Do it on `mine`.

    - Add it to the `CHANGELOG_FORK`.

    - Pull request directly and only to this project.
