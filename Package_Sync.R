#Paste path to backup package dataframe below
packages <- read.csv("H:\\ff970_downloads\\installed_packages.csv")
#Run
packages_to_install <- NULL
for (package_name in 1:length(packages)){
   if (packages$Package[package_name] %in% installed.packages()==FALSE){
     packages_to_install <- c(packages_to_install, packages$Package[package_name])
   }
}
install.packages(packages_to_install)