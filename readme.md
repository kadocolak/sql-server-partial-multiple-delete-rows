## Microsoft SQL Server Partial Multiple Delete Rows

# Why delete piece by piece?

In a live database system, you will delete 1-10-100 rows of data, this will never be a problem. Database servers instantly delete this number of rows because they require a lot of RAM memory.

But if you try to delete 1000000+ rows of data with a single row query on the same server, then it can be a problem. For this, going piece by piece, both on a time basis and in the first 1000 lines, will not tire the server and will also provide a gain in performance.

# What is the algorithm of the code?

First of all, it calculates how many rows of data there are in total that match the condition specified after the where.

Then every 10 seconds it deletes the first 100000 rows that meet this condition, and the loop continues until there are 0 rows that match the specified condition.

If the loop ends, "delete operation finished" appears on the screen.

A separate variable of type 1-0 is defined for the loop to run.
