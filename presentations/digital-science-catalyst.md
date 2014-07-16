# Digital Science Catalyst Proposal

Submitted to: https://www.digital-science.com/what-we-do/start-up-investment/catalyst
and declined with:

> Following review the Catalyst Committee have declined to progress your application. While your proposal is interesting it does not clearly describe the use cases and how you will engage with yours to promote uptake of your product. Also you have not clearly stated what benefits and advantages your proposal has over those competitor products already on the market.

by Laura Thomson.

The proposal follows:

## A description of the product or innovation

Open source GitHub optimized for writing books / articles / tutorials.

Landing page: https://github.com/booktree/booktree

Presentation video for the Shuttleworth Fellowship: https://www.youtube.com/watch?v=8MA-0_ZWmlY . They reply in September, if you take me I cancel my application with them.

GitLab will be the basis (open source GitHub clone with very close feature set). Intended features which I intend to implement on top of it:

- when users push or save from the web UI markdown or LaTeX input, we compile and host HTML, PDF, EPUB output.

- Js editor with side-by-side source / preview view for individual files, compatible with the on push compiler.

- everything can be done via the web interface: git mv, add, status, diff, revolve merge request conflicts.

- metrics for projects and users, like Stack Overflow, which are a huge incentive for people to make small tutorials.

Wherever possible, I will use separate components and interact with their API to reduce coupling.

## An explanation of how it would benefit scientific research

GitHub has helped increase the average quality / price ration of software projects. I want to do the same for scientific publishing and education:

- reduce the cost of books, articles and tutorials, if possible to zero.

- motivate students to learn by contributing to textbooks.

I aim at maximum merge back, indirectly helping other projects with similar goals.

## Background information, including competitor information

My résumé: http://www.cirosantilli.com

I studied in schools considered great in Brazil and France, only to find out that scientific education and publishing is currently bad, and I want improve it.

When I learned what GitHub was doing, I saw that this was the way.

Currently, there is no dominant competitor, only small closed source projects in this area, many of which have big overlap in functionality.

I believe it will require a good open source project in the area to draw enough developer attention and make one great SaaS product.

Up to date list of competitors at: https://github.com/cirosantilli/booktree#we-vs-them

Closed source competitors include:

- Penflip https://penflip.com/. Git based, but not as powerful as GitLab: no branches or forks, limited issue tracker. No LaTeX. Only one developer. Otherwise, we have similar philosophies, he is looking for a co-founder and is willing to accept me. If you think his path is best, I can talk to him and make a new proposal to work on his project instead.

- Authorea https://www.authorea.com/ Has recently received your grant. Does LaTeX, but otherwise even less powerful than Penflip: no merge requests, issues, git push and clone access, all of which are already possible in GitLab.

- ShareLaTeX https://www.sharelatex.com Open sourced early 2014. Lacks: Markdown input, HTML output, versioning on free tier, merge requests (real time focused), [At least 94k users](https://twitter.com/henryoswald/status/459367445946707968).

Potential competitors which I'm waiting to review because not yet live:

- O'Reilly Atlas https://atlas.oreilly.com/ Git + publishing via GitLab.

- Beegit https://github.com/cirosantilli/booktree#we-vs-them Git based book editing.

## A timetable for its development

- 4 weeks: Extend a GitHub Javascript API wrapper to work with GitLab. Considering https://github.com/philschatz/octokit.js, whose main author, Philip Schatz, approves the change https://github.com/michael/github/issues/68#issuecomment-21601050 and is linked to the OER movement.

- 4 weeks: Create an API based Javascript merge conflict resolution tool that works on GitHub and GitLab using the API wrapper. The feature lacks in both systems, and is a key blocking point for usage without the command line.

- 4 weeks: Modify Marked https://github.com/chjj/marked to:

    - produce LaTeX output (new renderer)
    - take multiple input files and make one output.
    - allow easy backward and forward search.

    Marked is a good choice because it is Js based and runs both on the browser and locally via Node.js, and we need a Js compiler to do preview as you type on the browser.

- 4 weeks: Create / modify a content editor to work with GitHub and GitLab API using the API wrapper. Prose https://github.com/prose/prose and OERPUB's GitHub book editor https://github.com/oerpub/github-bookeditor possible starting points. Add important missing features like side-by-side preview as you type and a file browser if necessary. GitHub and GitLab do have a web editor, but since they are not focused on publishing it not good enough for this purpose, and the preview is not necessarily compatible with the compiler back-ends we support.

- 2 weeks: Chose and make the CI compiler service work live. Currently considering Drone https://github.com/drone/drone Non-trivial install, but should already work with GitLab out of the box.

- 3 weeks: Integrate all system's web interfaces (API done on other items already) by adding links between them, e.g. from GitLab to the editor and the merge resolution tool. Make minor teaks to the GitLab interface to adapt if for book development: replace Git jargon with simpler words. Suggest a template that works well with the default compilation system at project creation.

- 3 weeks: Document the system using itself.

## Business model

If GitLab does not accept enough key features requests, I intend to fork them and turn this project into a SaaS service with the following business model:

- if your project is:

    - open source, you get all features for free

    - closed source, you may have to pay based on repository size / number of compiles

- support: we are installable locally for free and we sell technical support.

- book sale. Authors can sell books, and we take a small percentage of their profit.

## A budget breakdown and how you would spend the funds

Living expenses for me where I live now: Paris. 1500 Euros after taxes per month is fair (~ 2200 before taxes, same as a PHD student), but I can survive with 1000.
