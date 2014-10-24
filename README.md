# Booktree Project

**Book Development** with **Version Control**

<img alt="logo" src="logo.png" width="256"></img>

**Mission**:

- increase the quality / price ratio of textual learning material: textbooks, papers, tutorials.
- motivate readers (students) to learn by contributing.

Links:

- [What has been done by this project so far](achievements.md).
- [Alternatives to this project](alternatives.md).
- [Monthly news reports](monthly-reports/).
- [History of the project](history.md).
- [Presentation video](https://www.youtube.com/watch?v=8MA-0_ZWmlY). (partially outdated).
- **Status**: under development. Not yet usable by end users.

## Intro for programmers

-   **GitHub clone**
-   optimized for **book development and publishing** through [these features](#intended-features)
-   accessible to **non programmers**
-   powered by **[GitLab](https://github.com/gitlabhq/gitlabhq)**,
    the best open source GitHub clone:
    - [GitHub top 30 by stars](https://github.com/search?p=3&q=stars%3A%3E10000&ref=searchresults&type=Repositories)
    - [9 people working full time with service revenue](https://www.gitlab.com/about/)
    - [Feature set close to GitHub](https://github.com/gitlabhq/gitlab-public-wiki/wiki/Comparison-to-other-Git-web-interfaces)

The project is modularized for maximum reuse. See the [Architecture](#architecture) section.

## Intro for non-programmers

- **create**: edit and compile **markdown / Latex** input **online or locally**
- **publish**: share **HTML / PDF / EPUB** online **with one click**
- **sell**: set the price, buyers **pay**

with **Version control** because we adapted:

- IT industry **collaboration** techniques **Git** + **Bugtracker**
- to **non programmer** book developers

[Read this if you are not familiar with version control (Git, SVN, Mercurial).](version-control-intro.md)

[Use this if you want to convince policy makers to fund this idea.](politics.md)

## Use cases

-   **students and teachers** will be motivated to improve the books they are using
    and create tutorials themselves to help their peers and to get **recognition and thus better jobs**,
    all **while doing their obligations**.

    Questions can be answered on issues **only once**, where they can be found by future
    learners. Closing issues motivates users to improve the text to prevent future
    users from even having the doubt.

-   **researchers** can collaborate, publish and get metrics on their papers more efficiently,
    freeing them from publishers who give them nothing in return but a brand.

For detailed use case stories see: [use-cases.md](use-cases.md).

## Intended Features

High level roadmap of features we intend to implement.

Minimum viable product features:

-   when users push or save from the web UI **markdown or LaTeX input**,
    we **compile and host HTML, PDF, EPUB output**.

-   Js editor with **side by side source / preview** view for individual files,
    compatible with the on push compiler.

-   **everything** can be done via the web interface:
    `mv`, `add`, `status`, `diff`, multi-file commits, revolve merge conflicts.

    Non programmers:

    - learn Git from the browser
    - don't need to install anything

Other possible features:

-   **metrics for everything**: users, projects, groups, issues, comments, tags.

    Help people find the best material, and give the best contributors due credit.

-   writers can **set a price** for the compiled output, readers **pay** to have it.

-   bounty system similar to [Bountysource](https://www.bountysource.com):
    users can pay others to solve issues. Regular monthly payments can also be made
    for users to solve an average number of issues on each period, at a lower cost per issue.

For a detailed list of intended features, check
[our issue tracker](https://github.com/booktree/booktree/issues?state=open).

For a list of features which we do *not* want see: [non-features.md](non-features.md).

For the system architecture that will allow us to achieve those goals see: [architecture.md](architecture.md).

## Business model

Optimize for world **happiness**:

-   if your project is:

    - **open source**, you get **all** features for **free**
    - **closed source**, you **may** have to **pay** based on repository size / number of compiles

-   **support**: we are **installable locally** for free and we sell **technical support**.

-   **book sale** and **bounties**. Users can sell books and receive bounties,
    and we take a small percentage of their profit.

-   we will stay as **open source** as possible as long as it does not hinder the project.

    If we feel that we need to start making closed source features to get money to continue
    delivering the best product we will do so.

    If you are doing a similar project, we'd rather merge with you than compete.

Planned development timetable at: [timetable.md](timetable.md).

### Why the business model may work

-   The current coding / project management workflow is close to **optimal** for creation of code.

    Version control used for **every single** serious software project today.

    GitHub, a popular web interface had 3M users and **100M $** investment in 2012.

    Version control has helped the creation of open source libraries developed by thousands
    and used by millions, such as **Firefox, the Linux kernel, GCC, jQuery**, and many more.

    Books are **very similar** to code, but their development process is still on the **paper age**.

    We can **reuse** much of the existing coding infra structure to develop books and manage classes.

-   There are other projects which have **insufficient subsets** of what must be done,
    some of which are already financially bootstrapped.

    Because of our code reuse, we can offer a better product than them.

-   **Specializing in books** means that we can compile the books ourselves
    since there are few possible input / output types, allowing:

    - users to develop from the web UI without installing anything
    - users to sell the compiled output from our website

-   Books have **lower costs** than videos to:

    - create
    - modify
    - search
    - transmit and store, because files are smaller
    - collaborate on

    A sequence of well chosen images is better than a video because
    it is easy to refer to one of the images.

## Contributing

If you want to contribute to this project, see the [CONTRIBUTING.md](CONTRIBUTING.md).
