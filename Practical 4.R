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

### Fork a Repository ###

# A fork is a copy or offshoot of someone elses or your own master repository.
# These forks can be used as a base from which you build your own code or with which you use to edit and fix someone elses code.
# You can then submit a pull request to the original who can choose to accept it and have it incorporated into their original.

## Branches ##
# For your repositories, you can creat branches that isolate development away from your master repo and other branches. It is like a test environment.
# You could make edits to your master repo and save it as another branch, or you can save your master repo as a branch before editing and edit the new branch.
# Any commits made on this new branch are seperate from the master repo.
# To send the eddited branch to the original author and repo, send an new pull request using the associated button.
# Select the base repository you want to send the request to from the top of the new window
# A comparison of the two branches are found at the bottom.
# You can then send the pull request.

# If you recieve a pull request It will appear on your pull request tab.
# You can choose to merge, squash and merge or rebase and merge from the drop down menu.
# Squash and merge squashes all of the commits in the editted branch into a single commit in the master repo.

### RMarkdown ###

# RMarkdown is a format that allows for the display of code, explanations and results within the same document.
# It is a very versitiles format that can be converted to many other usefuls formats like html for webpages, word documents, PDFs, blogs, books.
# It can also work with a variety of different code like R, Python and others. It can be designated by typeing the code type into the  {} at the top of a code block.
# You need the retculate package to run python software.
install.packages("reticulate")
library(reticulate)

# You can now create a new Markdown document. 
# There are two types, RMarkdown and R Notebook. There is little difference so we can just use the RMarkdown format.
# The R Notebook format allows for a preview using the 'output: html_notebook' line in the header area that can be added to an RMarkdown format if you want. This function is replaced by the knit button on the top bar for RMarkdown.

# You can create a new RMarkdown document in R by going to 'File', 'New File' and 'RMarkdown.
# You can also change the format of an existing file using the drop down menu on the bottom right corner of the script pane.
# To run the whole document, press the run button on the top right of the script pane. It has a green bar on the right that shows how where the code is currently running and red if an error.
# Click the 'Knit' button to run the RMarkdown document in its entirety, and creates a copy of the result as the format that is identified by the header shown by ---, within witch YAML information is written to format the document.
# When using code block you can edit how data is treated using the cog button on the right. You can have the code be shown or just the output etc.
# The play symbol facing downwards runs all of the code upto the top of your selected code block.
# The play button runs your code block.

## HTML ##

# To run code in a HTML file, you need to insert a code block which can be found in the insert button on the top right of the script pane.
# When using code chunk you can edit how data is treated using the cog button on the right. You can have the code be shown or just the output etc.
# The play symbol facing downwards runs all of the code upto the top of your selected code chunk.
# The play button runs your code chunk.
# Make sure the YAML information in the header area is set to format the document into HTML when it is knitted.

## Flexdashboard ##

# A dashboard is a format for focussing on interactive visualisations with some complimentary text or code.
# Flexdashboard is a package that is used to knit the RMarkdown format into a dashboard.
install.packages("flexdashboard")
library(flexdashboard)
# Make sure the relevent Felxdashboard YAML information is placed in the header area at the top of the document.

# To add visualisation parameters like column width, name the thing you want to edit (column) and enter the parameter intide {}. These parameters will be applied to the section bellow it.
# Once the visualisation parameters are entered, it must be underlined with a long string of --------------- that is long enough to turn from black to blue. This should be placed below any visualisation paramters like those above to identify them as being such parameters.
# The visualisation parameters will apply to all of the next sections until it is meets another set of parameters and a line of -------------------.
# To denote a section , you must use ### with the section name written after, turning the ### blue.
# Sections apply until the next set of ### and name.
# Remember that most of this is just for the flexdashboard format.

# To add text, just type information normally outside of a code chunk.
# To add code, just use the same method as for HTML and using the 'insert' button.
# However, the flexdashboard format does not normally show code in its final result.
# One method to show code in the felxdashboard format, is to enter 'echo=TRUE' in the {} brackets at the top of each desired code chunck which determines the chuncks code type.
# Another method that causes all code in the whole document to be shown is to enter 'knitr::opts_chunk$set(echo=TRUE)' within the first code chunk of the document, not within the {}.

## Word Document ##

# To set the format to a word document, change the YAML in the header area into the necessary information.
# Some functions may be limited to HTML, resulting in an error if trying to format the RMarkdown file into a word document.
# To force the convertion anyway, enter 'always_allow_html: true' in the YAML information in the header area. Ensure it has no spaces in front of it and is line with the other YAML information.
# The Word document format may also not print visualisations of data.

### Adding References ###

# Mendeley is a free reference manager where you link pdfs of your articles and books.
# You can then enter the necessary data about the articles and books so it can create a reference in your desired format.
# To link this library of references to R and RMarkdown documents, you need to create a BibTex file.
# A bibtex file can store all of your references in a single file, and if syncing is enabled, will be updated as you change things in the Mendelay software.
# To create it go to the Mendelay software and select 'Tools' > 'Options' > 'BibTex'.
# From this window, you can choose to Escape LaTex special characters (does not check the fields which may cause error), enable BibTex syncing to keep it updated, and choose if the file is for your whole library or a single section.
# When you create the file, it must be in the folder where the R project file is so it can be seen by R.

# There are many optional structural parameters that can be added and controlled using the YAML information in the header area. These include adding and formating Tables of contents, numbered sections, bibliography etc.
# Make sure you include the bibliography information and the Biblex file in the YMAL information in the header area, otherwise the citations will not work as it cannot find your reference file.
# To cite a document in RMarkdown, you need to enter the citation key which is [@author(s)year;@author(s)year], and can be found within Mendeley.
# Another way of getting the citation key is to use the citr package.
install.packages("citr")
library(citr)
# This tool can be accessed by going to the 'Addins' button on the top bar and selecting citr.
# Select the desired documents and the citation keys will be retrieved, which can be inserted into the RMarkdown document.
# Make sure citations are not placed inside code chuncks and are only placed where normal text is.
# Referenced documents will have their full reference appear in a complete bibliography within the last section of the RMarkdown document. You can create an empty last section for this bibliography.

### Packrat ###

# Packrat is a useful tool that is used to store all of your loaded packages into a single folder within the project.
# This improves the sharing of projects as people can use your Packrat to get all of the packages you used and with the same versions, hopefully allowing them to run your code without issue.
# This can be accessed in R using 'Tools', 'Project Options' or by useing the Packrat button at the top of the packages tab in the bottom right pane.