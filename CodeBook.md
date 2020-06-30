# Names

"description" "subject" "num" "tbodyaccmeanx" "tbodyaccmeany" "tbodyaccmeanz" "tbodyaccstdx" "tbodyaccstdy" "tbodyaccstdz" "tgravityaccmeanx" "tgravityaccmeany" "tgravityaccmeanz" "tgravityaccstdx" "tgravityaccstdy" "tgravityaccstdz" "tbodyaccjerkmeanx" "tbodyaccjerkmeany" "tbodyaccjerkmeanz" "tbodyaccjerkstdx" "tbodyaccjerkstdy" "tbodyaccjerkstdz" "tbodygyromeanx" "tbodygyromeany" "tbodygyromeanz" "tbodygyrostdx" "tbodygyrostdy" "tbodygyrostdz" "tbodygyrojerkmeanx" "tbodygyrojerkmeany" "tbodygyrojerkmeanz" "tbodygyrojerkstdx" "tbodygyrojerkstdy" "tbodygyrojerkstdz" "tbodyaccmagmean" "tbodyaccmagstd" "tgravityaccmagmean" "tgravityaccmagstd" "tbodyaccjerkmagmean" "tbodyaccjerkmagstd" "tbodygyromagmean" "tbodygyromagstd" "tbodygyrojerkmagmean" "tbodygyrojerkmagstd" "fbodyaccmeanx" "fbodyaccmeany" "fbodyaccmeanz" "fbodyaccstdx" "fbodyaccstdy" "fbodyaccstdz" "fbodyaccmeanfreqx" "fbodyaccmeanfreqy" "fbodyaccmeanfreqz" "fbodyaccjerkmeanx" "fbodyaccjerkmeany" "fbodyaccjerkmeanz" "fbodyaccjerkstdx" "fbodyaccjerkstdy" "fbodyaccjerkstdz" "fbodyaccjerkmeanfreqx" "fbodyaccjerkmeanfreqy" "fbodyaccjerkmeanfreqz" "fbodygyromeanx" "fbodygyromeany" "fbodygyromeanz" "fbodygyrostdx" "fbodygyrostdy" "fbodygyrostdz" "fbodygyromeanfreqx" "fbodygyromeanfreqy" "fbodygyromeanfreqz" "fbodyaccmagmean" "fbodyaccmagstd" "fbodyaccmagmeanfreq" "fbodyaccjerkmagmean" "fbodyaccjerkmagstd" "fbodyaccjerkmagmeanfreq" "fbodygyromagmean" "fbodygyromagstd" "fbodygyromagmeanfreq" "fbodygyrojerkmagmean" "fbodygyrojerkmagstd" "fbodygyrojerkmagmeanfreq" "angletbodyaccmean.gravity" "angletbodyaccjerkmean.gravitymean" "angletbodygyromean.gravitymean" "angletbodygyrojerkmean.gravitymean" "anglex.gravitymean" "angley.gravitymean" "anglez.gravitymean"


# Process



The run analysis script works by first taking all the variable names from the features.txt file and then cleaning them up.

After that I took only the variables that I needed (mean and std) by using the grepl function

I read the activity_labels file and put it in a table.

Then I read both the X_train and X_test files and saved them in tables and then only took the variables that I needed (mean and std)

Then I read both the Y_train and Y_test files and saved them in tables and then merged them with the activity lables that I had previously loaded.

Then I read both the subject_test and subject_train files and saved them in tables

Then I cbinded the previous three tables with the modifications mentioned and saved them.

Then with both the full data from the test and train I merged them into one

Then I groupe them by activity and found the mean for all of them

I then saved the text files as specified on the HW.


