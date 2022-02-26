Some of you are probably very familiar with git and some of you it may be totally new.

Git is powerful and confusing and there's no getting away from it, but all you need to know for these exercises is that it is how we can push up changes to code in multiple places and then merging them back into our main branch again.

when you checkout a new branch

`git checkout -b my_new_branch` you are essentially creating a parallel version of the code with your current changes.

In a big codebase with many developers there may be 10-100 branches going at once!

But eventually those need to get back into the main code - so when you are done with a small feature, you can push your branch to github and create a pull request that says "I want this code to go back in the main branch now" - and people can see what changes are there, and then merge it into the main branch and then you start again with a new branch from that and implement the next feature


## resources

https://www.freecodecamp.org/news/learn-the-basics-of-git-in-under-10-minutes-da548267cc91/

https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-branches

https://learngitbranching.js.org/?locale=en_US
