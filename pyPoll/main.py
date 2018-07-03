import os
import csv

electioncsvpath = os.path.join('Resources', 'election_data.csv')

with open(electioncsvpath, newline='') as csvfile:

    # CSV reader specifies delimiter and variable that holds contents
    csvreader = csv.reader(csvfile, delimiter=',')
    #print(csvreader)

     # Read the header row first (skip this step if there is now header)
    csv_header = next(csvreader)
    #print(f"CSV Header: {csv_header}")        

    candidate = []
    voteCount = []
    votePercent = []
    resultLine = []
    
    for row in csvreader:           
        if (row[0]!="" and row[2] != "" ):
            candidate.append(row[2])

    # total vote count
    totalVoteCount = len(candidate)
    #print (str(totalVoteCount))

    # find the list of distinct candidates
    uniqueCandidate = set(candidate)
    uniqueCandidateList = list(uniqueCandidate)
    #print (uniqueCandidateList)

    resultLine.append("Election Results")
    resultLine.append("-------------------------")
    resultLine.append("Total Votes: " + str(totalVoteCount))
    resultLine.append("-------------------------")

    for candidateName in uniqueCandidateList:
        #print (candidateName)
        #print (uniqueCandidateList.index(candidateName))
        voteCountforCandidate = candidate.count(candidateName)
        #print (str(voteCountforCandidate))
        voteCount.append(voteCountforCandidate)
        votePercent.append( "{:.3%}".format(voteCountforCandidate/totalVoteCount))
        resultLine.append(candidateName + ": " + "{:.3%}".format(voteCountforCandidate/totalVoteCount) + " (" + str(voteCountforCandidate) + ")")

    resultLine.append("-------------------------")
    
    maxVoteIndex = voteCount.index(max(voteCount))
    winnerName = uniqueCandidateList[maxVoteIndex]
    #print (maxVoteIndex)
    #winner = candidateName.index(max(voteCount))
    resultLine.append("winner: " + str(winnerName))
    #print ("winner: " + str(winnerName))

# open output text file
with open("ElectionResults.txt", "w") as outputFile:

    for linetext in resultLine:
        # print to terminal
        print(linetext)
        # write to output file with new line character
        outputFile.writelines(linetext+"\n")


outputFile.close() 


