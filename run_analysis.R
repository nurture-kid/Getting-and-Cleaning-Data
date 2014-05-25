## get the features plus subject and activity
feature_list<-read.table("features.txt")
feature_names<-c('subject','activity',as.character(feature_list[,2]))

## for test dataset, combine subject, activity and test set, assign names
test_ds<-read.table("X_test.txt")
test_activity<-read.table("y_test.txt")
test_subjects<-read.table("subject_test.txt")

test_ds<-cbind(test_subjects,test_activity,test_ds)
colnames(test_ds)<-feature_names

## repeat same for train
train_ds<-read.table("X_train.txt")
train_activity<-read.table("y_train.txt")
train_subjects<-read.table("subject_train.txt")

train_ds<-cbind(train_subjects,train_activity,train_ds)
colnames(train_ds)<-feature_names

## merge test and training datasets by column names
combined_ds<-rbind(train_ds,test_ds)

rm(train_ds)
rm(test_ds)

## new dataset with only mean and stdev features
mean_std<-c(1,2,grep('mean', tolower(feature_names)),grep('std', tolower(feature_names)))
mean_std_ds<-combined_ds[,mean_std]

rm(combined_ds)

## assign descriptive names to activities in the new datasest
activity_name<-gsub("1","walking",mean_std_ds[,2])
activity_name<-gsub("2","walking upstairs",activity_name)
activity_name<-gsub("3","walking downstairs",activity_name)
activity_name<-gsub("4","sitting",activity_name)
activity_name<-gsub("5","standing",activity_name)
activity_name<-gsub("6","laying",activity_name)

mean_std_ds[,2]<-activity_names

write.table(mean_std_ds,"HumanActivity_ActivityMeanAndStandardDeviationMeasurements_Full.txt",row.names=FALSE)

## new dataset: average for each activity/variable/subject  
reshapeAvg<-mean_std_ds

reshapeMelt<-melt(reshapeAvg,id=c("subject","activity"),measure.vars=names(reshapeAvg[4:length(reshapeAvg)]))

averageBySubjectByActivity<-dcast(reshapeMelt,subject+activity~variable,mean)

write.table(averageBySubjectByActivity,"HumanActivity_AverageMeasurementsBySubjectByActivityType.txt",row.names=FALSE)
