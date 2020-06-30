features <- read.table("./Data/features.txt", col.names=c("num","name"))
allvars <- mutate(features, name = gsub("BodyBody", "Body", name))

allvars <- mutate(allvars, name = gsub("-", "", name),
                       name = gsub("\\(", "", name),
                       name = gsub("\\)", "", name),
                       name = gsub(",",".",name),
                       name = tolower(name))

neededvars <- filter(allvars, grepl("mean|std", name))

activities <- read.table("./Data/activity_labels.txt", col.names=c("num", "description"))

testval <- read.table("./Data/test/X_test.txt", col.names = allvars$name)
trainval <- read.table("./Data/train/X_train.txt", col.names = allvars$name)

testval <- testval[ , neededvars$name]
trainval <- trainval[ , neededvars$name]

testact <- read.table("./Data/test/y_test.txt", col.names=c("activity"))
trainact <- read.table("./Data/train/y_train.txt", col.names=c("activity"))

testact <- merge(testact, activities)
trainact <- merge(trainact, activities)

testsub <- read.table("./Data/test/subject_test.txt", col.names=c("subject"))
trainsub <- read.table("./Data/train/subject_train.txt", col.names=c("subject"))

test <- cbind(testact, testsub, testval)
train <- cbind(trainact, trainsub, trainval)

merged <- rbind(test, train) %>% select( -activity )
merged <- mutate(merged, subject = as.factor(merged$subject))

write.table(merged, "Step 4 - Mean and std.txt")

grouped <- group_by(alldata,description,subject)

summarized <- summarise_each(grouped, mean)

write.table(summarized, "Step 5 - Arranged by activity.txt", row.names = FALSE) 