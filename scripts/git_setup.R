#title: git_setup
#author: Erin Phelps

install.packages("gitcreds")
library(gitcreds)


#setting up to connect R and GitHub
#this is to get a token (password) -> it will take you to a new page
usethis::create_github_token()

#now run this code and enter the token (password) it generated
gitcreds::gitcreds_set()


#create clone project
usethis::create_from_github(
  "https://github.com/erinphelps/git-example.git",
  destdir = "~/OneDrive - University of Arizona/WSM_E_Masters/Courses/Fall2023/RStudio/git-example"
)