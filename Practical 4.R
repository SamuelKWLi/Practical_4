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
# Then go to the 


