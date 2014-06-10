# What are versions

Versions are discrete logical modifications to a directory.

You want to change a mathematical notation for an entire book for a better one.

- edit file 1, update the notation
- edit file 2, update the notation
- create a new version with comment: `Update notation.`.

Now you want to add a new example for a theorem:

- edit file 2, add the example
- create a new version with comment: `Add example.`.

After you did that, the version tree would look like:

    o Start the book.
    |
    o Update notation.
    |
    o Add example.

Git uses the `add` and `commit` commands to create new versions.

Git users also call version as *revisions* or *commits*.

# Advantages of version control

They make it easy to:

-   backup and restore: return to an older version if an error was made.

    The Git operation is called `checkout`.

-   view the differences between two versions:

    - before you create a new version: did I alter anything I shouldn't have?
    - when someone makes a suggestion, you can see exactly what he is modifying

    The Git operation is called `diff` (as in difference), and looks like this:

    ![diff](diff.png)

    where the minus sign `-` is for the old line, and the plus sign `+` is for the new one.

-   refer to an specific version.

    If you say: "look at Section 1", the section might not be there anymore tomorrow.
    With versions, you can say: "look at Section 1, version 2.0"

Version control systems also come with tools to:

-   upload your project online. Efficient because only new versions are uploaded.

    The Git operation is called `push`.

-   work on multiple features at once.

    E.g.: you are writing a new chapter when someone reports an error on existing ones.

    You can:

    - save the current chapter as it is
    - go back in history before you started the chapter
    - fix the error in a new version
    - get back to the new chapter and finish it
    - create a new version that incorporates both the new chapter and the correction
        (`git merge` or `git rebase`).

    After you to that, the version tree will look like:

        |
        o   Start the book.
        |\
        | o Fix error.
        | |
        o | New chapter.
        | |
        |/
        o   Fix error and new chapter.
        |

    Note how the tree *branched out* and then came back together.

# Web interfaces

Web interfaces are websites like [GitHub](https://github.com)
that use version control systems behind the scenes.

They:

- allow to modify projects on a browser without installing the version control software
- make it easier for teams to collaborate on a single project:
    - provide a system to submit and evaluate suggestions called *merge requests*
    - make the code browsable online
    - offer a specialized forum system to treat errors called a *bug tracker*
    - showcase the author so that he becomes more famous
