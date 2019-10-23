### Using RStudio with Git ###

# There are three methods of using Git with RStudio.
# 1. Set up the GitHub repository, clone it to your Git then load it in RStudio — using Git GUI
# 2. Create a new RStudio project and link it to GitHub — new version control
# 3. If you have an existing RProject then you can link them manually — existing project

# All of these methods first requires you create a new repo or have an emty existing one on GitHub.
# Go onto GitHub online and create a new repository, giving it a name and ensuring it is set to public.
# While Github recommends you include a Readme file, it is vital the repo is empty for the third method discussed here so tend to avoid it.


## Method 1 - Using the Git GUI ##

# Using this method creates a local copy of your repo on your computer through the Git GUI.
# First get the URL for your repo from Github by clicking on your repo and using the 'clone or download' button to create the URL.
# The open the Git GUI and select the ‘Clone Existing Repository’ option.
# You can then paste the repo URL into the 'Source Location' box to link your online repo.
# Then browse for where you want to put this local clone. Beware that you need to create a new folder for this through the Git GUI by selecting an existing folder and adding the new folder name to the end of the address.
# To link this with a new R project, open R and create a new project.
# Select the 'Existing Directory' option and select the new local repo file you created.

## Method 2 - Create a new Version Control in RStudio ##

# This is a simler method but requires that you are starting a completely new project.
# First get the URL for your repo from Github by clicking on your repo and using the 'clone or download' button to create the URL.
# To link this with a new R project, open R and create a new project.
# Select the 'Version Control' option and select the 'Git' option.
# You can then paste the repo URL into the 'Source Location' box to link your online repo.
# Then browse for where you want to put this local clone. Beware that you need to create a new folder for this through the Git GUI by selecting an existing folder and adding the new folder name to the end of the address.

## Method 3 - Using an Existing Project ##

# This method assumes you have an existing project that you want to save.
# First go to 'Tools', ' Global Options', and 'Git/SVN'.
# Ensure the top tick box is ticked and that R knows where the 'git.exe' is located.
# Then go to the 'Tools', 'Project Options' and select 'Git' from the drop down box.
# This will produce a git window on the top right pane and a git button on the top bar that can be used to manipulate git.
# Then to connect this local Git repo with the online Github repo you created, you need to access the shell through 'Tools' and 'Shell'.
# type 'git remote -v' into the command line and it should return with your Github repository URL, if not you need to connect it.
# to connect it you must type 'git remote add origin *********' where the * symbols are the Github repo URL which you copy and paste in.
# Then check if RStudio is tracking your Origin/Master branch from Github by entering 'git branch -vv'.
# If the response does not have 'origin/master', it is not tracking your main Github repo branch so you must change it.
# To change it enter 'git push --set-upstream origin master' and check it again using the above command. The result should have 'origin/master' in it.

## Committing to Git ##

# When ever you save your files, you are saving a copy of it to your local work directory.
# Git allows you to commit your files, creating a save point and allowing you to keep track of changes you make through saves.
# Before commiting, files need to be staged, which is the checking of differences in the files from the last commit so it is ready to be commited again.
# A commit only saves these save points to your local repo and not the the online Github repo.

# For the Commit window, go to the Git button on the top bar and select 'Commit', or click the commit button int eh git tab on the top right pane.
# The top left pane of this new window will have a list of all the files in the local repo that has been changed since the last commit.
# First stage the files that you want to commit by ticking their check box, or clicking the stage button to select all of them.
# Then Write a commit note in the top right pane and click the commit button.
# You can see what changes have been made for the selected file on the bottom pane int eh commit window.

## Pushing to Github ###

# Commiting only saves your changes to the local repo. if you want to upload these changes to your online repo on Github, you must push it.
# To do this, ensure all of your desired files have been commited and press the push button (Green up arrow) on either the commit window or the Git tab on the top right pane.
# If the push button is greyed out, you must check if Rstudio is connected to Github as discussed above in Method 3.

## Pulling from Github ##

# You can also make changes to your files from the online Github repo, or have other people make changes to them.
# To take these changes and apply them to your own local files, you must pull them from Github.
# To pull, press the pull button (blue down arrow) from either the commit window or the Git tab in the top right pane.
# The changed files will be downloaded into your local repo and replace them, updating your project with these new changes.

