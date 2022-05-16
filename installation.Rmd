# Installation instructions

Please ensure that you have done the following before the course (needed for version control exercises):

## Install RStudio

Make sure to have RStudio installed. You can download it [here](https://www.rstudio.com/products/rstudio/download/)

## GitHub
You'll need a GitHub account and a Personal Access Token to link GitHub with RStudio:

1. Create a GitHub account on: [https://github.com](https://github.com)
2. Set up a personal token to allow R Studio to link to GitHub (this is in place of using a password): 
[https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

## Git software
The software that keeps track of the different versions is `git` itself. You can follow the instructions here: [https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN)

Later we will set up RStudio to access git and then it might be useful to know where git has been installed. This can be found out by either using the command `git --exec-path` from a command line prompt (Windows/Linux/Mac) or from the Terminal pane within R Studio.

On a Mac/Linux computer you can also issue a `which git` command at the command line or R Studio Terminal. Results may differ between these commands as operating systems often use aliases that point to the real location of the program.

:::note
**MacOSX**

The [installation instructions for Mac](https://git-scm.com/download/mac) give you a few different options.

The easiest option is probably to install using Xcode, but it's a huge (GBs!) package that contains all kinds of other things you probably do not need. 

After that, you're probably best off using `homebrew` - a package manager that allows you to install all kinds of interesting stuff via the command line. If you're not comfortable with that, then see:

the [standalone installer](https://sourceforge.net/projects/git-osx-installer/) provided by Tim Harper.
:::
