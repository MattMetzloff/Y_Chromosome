setwd("C:/Users/Owner/Desktop/Lab Work/NextSeq_all/HiC Contact Distances/")
#this file takes the QC output from contact matrix building and the distances output from contact distance finding
#and reports the distribution of distances.


######TO BE CHANGED FOR EACH RUN
data = read.delim("X_YY_4_distances.txt",header = FALSE)

#Note that the input file lists each contact distance twice in a row,
#because the file has data for each end of the contact. Thus, remove
#every other line to get the condensed data 
toDel = seq(1,nrow(data), 2)
condensed = data.frame(data[ toDel ,])

#distances should be absolute
abs = abs(condensed)


######TO BE CHANGED FOR EACH RUN
#get the total number of HiC contacts from the matrix QC information.
totalcontacts = (replace with number of valid Hi-C contacts)




#gets the percentages of total contacts for each distance. 
a_sub1kb = round((length(which((abs[1]<=1000)))*100/totalcontacts),2)
b_1to2kb = round((length(which((abs[1]>1000) & (abs[1]<=2000))))*100/(totalcontacts),2)
c_2to5kb = round((length(which((abs[1]>2000) & (abs[1]<=5000))))*100/(totalcontacts),2)
d_5to10kb = round((length(which((abs[1]>5000) & (abs[1]<=10000))))*100/(totalcontacts),2)
e_10to20kb = round((length(which((abs[1]>10000) & (abs[1]<=20000))))*100/(totalcontacts),2)
f_above_20kb = round((length(which(abs[1]>20000))*100/totalcontacts),2)