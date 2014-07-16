# Booktree - Mozilla Summer Sprint 2014

Proposal for the [Mozilla Summer Sprint 2014](http://mozillascience.org/summer-sprint-faq).

- Project page: https://github.com/booktree/booktree
- Project responsible: [Ciro Santilli](http://www.cirosantilli.com).
    Will be in the Paris site. Will be glad to help anyone =)

This project aims to be the GitHub for text (book, article, tutorial) writing,
in a similar vein to JotGit.

This project is based on [GitLab](https://github.com/gitlabhq/gitlabhq),
which is likely to be the most feature rich open source GitHub "clone".

As explained in the [use cases](https://github.com/booktree/booktree#use-cases),
it focuses on using the "GitHub workflow" for teaching and research publishing.

[Key intended features include](https://github.com/booktree/booktree#intended-features):

- Usable by non-programmers. In particular, everything can be done from the browser.
- Markdown (maybe LaTeX) input and HTML, PDF, etc. outputs
- User metrics to incentive people to collaborate

Currently this project is being developed only by [Ciro Santilli](http://www.cirosantilli.com/), full time.

As shown in the [alternatives section](https://github.com/booktree/booktree#alternatives),
we believe that there are no good enough products yet, even less so in the open source side.

See the [achievements section](https://github.com/booktree/booktree/blob/master/achievements.md)
for a list of what has been done so far.

## Proposed activities

Up to now, we have been only *merging back* features for GitLab
which we feel are very important for text development,
and will continue to do so until the GitLab Team stops accepting features important for us.

This means that will will focus on issues from their
[feature request forum](http://feedback.gitlab.com/forums/176466-general)
that have been marked as ACCEPTING MERGE REQUESTS.

Bellow is a list of such issues that we propose be tackled on the sprint.

If you have another idea, please send a PR.

Each link points to an issue: if you wish to start work on it, just leave a comment there.

# Simple and useful for everyone

The following issues simple to implement, and are useful to anyone who uses GitLab,
both for text and computer code developers.

They would be a good way to get started with the project for less experienced developers.

- http://feedback.gitlab.com/forums/176466-general/suggestions/3538034-modify-tab-order-on-issues-comments-so-it-goes-to-
- http://feedback.gitlab.com/forums/176466-general/suggestions/3797817-close-comment-button-for-issues
- http://feedback.gitlab.com/forums/176466-general/suggestions/5961382-keyboard-shortcut-to-go-to-the-canonical-url
- http://feedback.gitlab.com/forums/176466-general/suggestions/5939839-drop-git-in-the-folder-name-in-zip-output
- http://feedback.gitlab.com/forums/176466-general/suggestions/3873289-show-when-commits-are-added-or-stripped-in-a-mer
- http://feedback.gitlab.com/forums/176466-general/suggestions/4110570-group-description-should-support-markdown
- http://feedback.gitlab.com/forums/176466-general/suggestions/5862958-relative-links-in-markdown-should-support-paths
- http://feedback.gitlab.com/forums/176466-general/suggestions/5796741-fork-to-group
- http://feedback.gitlab.com/forums/176466-general/suggestions/5915010-make-issue-search-case-insensitive
- http://feedback.gitlab.com/forums/176466-general/suggestions/5760434-avoid-using-low-contrast-text-in-documentation
- http://feedback.gitlab.com/forums/176466-general/suggestions/5607934-view-diff-on-submit-merge-request-form

### Well specified and key to text development

These are issues which we feel are both very well specified,
and very important to text editing in particular.

Those issues may not be trivial,
but we believe that a Rails developer could tackle during the time of the Sprint:

- http://feedback.gitlab.com/forums/176466-general/suggestions/5647999-show-popular-project-on-the-public-projects-page
    through simple star sort. Depends on:
    https://github.com/gitlabhq/gitlabhq/pull/7233
    which will likely be accepted soon.

- complete: https://github.com/gitlabhq/gitlabhq/pull/7266 . Medium difficulty.
    Idea already reviewed by the lead dev: a decent completion will very likely be accepted.

- http://feedback.gitlab.com/forums/176466-general/suggestions/5482948-create-directories-from-the-web-ui
    Low to medium difficulty. Has a probably broken over simplified PR at:
    https://github.com/gitlabhq/gitlabhq/pull/6066

- http://feedback.gitlab.com/forums/176466-general/suggestions/3797831-allow-moving-and-renaming-files-in-gitlab
    to allow everything to be done from the web interface without Git.

- http://feedback.gitlab.com/forums/176466-general/suggestions/5004385-wrap-lines-option-in-the-merge-request
    optimizes for text editing. Medium difficulty.

# Hard and key to text development

The following issues are less well specified, but important for text editing in particular.

We do not believe it to be feasible to finish them on the Summer Sprint,
but simply helping to specify them through and implementation plan
or screenshot would already be a great step forward:

- http://feedback.gitlab.com/forums/176466-general/suggestions/5590496-resolve-any-merge-request-conflict-from-the-web-in
- special diff for prose input: http://feedback.gitlab.com/forums/176466-general/suggestions/6093710-track-changes-in-the-web-editor
