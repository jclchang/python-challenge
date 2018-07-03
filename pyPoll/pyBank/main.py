#  main.py
#  Assignement #3 
#

import os
import csv

budgetcsvpath = os.path.join('Resources', 'budget_data.csv')

with open(budgetcsvpath, newline='') as csvfile:

    # CSV reader specifies delimiter and variable that holds contents
    csvreader = csv.reader(csvfile, delimiter=',')
    #print(csvreader)

    # Read the header row first (skip this step if there is now header)
    csv_header = next(csvreader)
    #print(f"CSV Header: {csv_header}")        

    #print(len(list(csvreader)))
    reportingPeriod = []
    reportedRevenue = []
    revenueChange = []

    x = 0
    # Read each row of data after the header
    for row in csvreader:            # row is returned as a list 
        reportingPeriod.append(row[0])
        reportedRevenue.append(float(row[1]))
        #print ("length " + str(len(reportingPeriod)))

        if x > 0:
            # calculate changes between each month
            revenueChange.append(reportedRevenue[x] - reportedRevenue[x-1])
            #print (f'x {x}')
            #print (f'revenue: {reportedRevenue[x-1]} ')
            #print (f'revenue: {reportedRevenue[x]} ')
            #print (f'Change: {revenueChange[x-1]}')

        x += 1

# create a new list to hold all analysis lines
outputLine = []
outputLine.append("Financial Analysis")
outputLine.append("-----------------------------------------------------")

# number of reporting period
monthCount = len(reportingPeriod)
totalMonthLine = "Total Months: " + str(monthCount)
#print (f"Total Months: {monthCount}")
outputLine.append(totalMonthLine)

# total revenue
netRevenue = sum(reportedRevenue)
netRevenueLine = ("Total: " + '${:,.2f}'.format(netRevenue))
#print ("Total: " + '${:,.2f}'.format(netRevenue))
outputLine.append(netRevenueLine)

# Average revenue
#averageRevenueChange = sum(revenueChange) / len(revenueChange)
#averageRevenueChangeLine = ('Average Change: ' + '${:,.2f}'.format(averageRevenueChange))
#print ('Average Change: ' + '${:,.2f}'.format(averageRevenueChange))
#outputLine.append(averageRevenueChangeLine)

# Average revenue
averageRevenueChange = sum(revenueChange) / len(revenueChange)
averageRevenueChangeLine =  ('Average Change: ' + '${:,.2f}'.format(averageRevenueChange))
#print ('Average Change: ' + '${:,.2f}'.format(averageRevenueChange))
outputLine.append(averageRevenueChangeLine)

# max change
maxChange = max(revenueChange)
#print (f'max change: {maxChange}')
# get the index of the max change
maxIndex = revenueChange.index(maxChange)
#print (f'max index: {maxIndex}')
# get the corresponding reporting period with that index
maxChangeDate = reportingPeriod[maxIndex+1]
#print (f'Max change date: {maxChangeDate}')
maxChangeLine =  ("Greatest Increase in Profits: " + maxChangeDate + " (" + '${:,.2f}'.format(maxChange) + ")")
#print ("Greatest Increase in Profits: " + maxChangeDate + " (" + '${:,.2f}'.format(maxChange) + ")")
outputLine.append(maxChangeLine)

# Min change
minChange = min(revenueChange)
#print (f'min change: {minChange}')
# get the index of min revenue change
minIndex = revenueChange.index(minChange)
#print (f'min index: {minIndex}')
# get the corresponding reporting period with that period
minChangeDate = reportingPeriod[minIndex+1]
#print (f'Min change date: {minChangeDate}')
minChangeLine = ("Greatest Decrease in Profits: " + minChangeDate + " (" +  '${:,.2f}'.format(minChange) + ")")
#print ("Greatest Decrease in Profits: " + minChangeDate + " (" +  '${:,.2f}'.format(minChange) + ")")
outputLine.append(minChangeLine)

# open output text file
with open("FinancialAnalysis.txt", "w") as outputFile:

    for linetext in outputLine:
        # print to terminal
        print(linetext)
        # write to output file with new line character
        outputFile.writelines(linetext+"\n")


outputFile.close() 

