# Hudson Development Changelog

In protest of GitHub's abuse of platform privilege in automatically indexing (L)GPL-licensed repositories for the creation of a training dataset for [GitHub Copilot](https://copilot.github.com/), development of the Hudson programming language is not conducted on GitHub.
However, many programmers use this platform as a form of newsfeed for the projects that they follow, using their GitHub homepage to keep up with the developments of development without conducting code reviews.
As such, the Hudson project mirrors a [commit log](https://github.com/Andrew-William-Smith/hudson-changelog/blob/master/master.log) to this repository, allowing for the browsing of all commits on the project's `master` branch without making any actual code available to GitHub.
If you would like to track Hudson development, you may follow this repository; however, to view changes in full, you will still need to browse the project's main repository [on sourcehut](https://git.sr.ht/~awsmith/hudson).

## Mirroring commits from sourcehut

Hudson developers may mirror their commits from sourcehut as follows:
```sh
$ git clone git@github.com:Andrew-William-Smith/hudson-changelog.git
$ cd hudson-changelog
$ ./publish.sh {path to Hudson repo}
$ git commit -u origin master
```
This process should be run once per commit to `hudson/master`.  At present, mirrored commit logs are not maintained for other branches.

## Resources on GitHub Copilot

- [*FSF-funded call for white papers on philosophical and legal questions around Copilot*](https://www.fsf.org/blogs/licensing/fsf-funded-call-for-white-papers-on-philosophical-and-legal-questions-around-copilot): Donald Robertson (Free Software Foundation), 28 July 2021.
- [*Publication of the FSF-funded white papers on questions around Copilot*](https://www.fsf.org/news/publication-of-the-fsf-funded-white-papers-on-questions-around-copilot): Craig Topham (Free Software Foundation), 24 February 2022.
- [GitHub Copilot duplicates GPLv2 code verbatim with an improper license header](https://twitter.com/mitsuhiko/status/1410886329924194309): Armin Ronacher (Twitter @mitsuhiko), 2 July 2021.
