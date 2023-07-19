# Crowdfunding, Extract Transform Load Pipeline

Arsam Ijaz and Ronald Lam, had proceed to divide the work into the following parts:

* Part 1: Arsam
* Part 2: Ronald
* Part 3: Arsam and Ronald
* Part 4: Arsam and Ronald
* Clean & streamline code: Ronald

## Part 1: Create the Category and Subcategory DataFrames
by Arsam

Using the crowdfunding.xlsx and crowdfunding.xlsx excel data located in the Resources directory, Arsam extracted and transformed the data creating two dataframes with unique 'id' columns linked to unique labels. Next he exported the dataframes as .csv files. 


## Part 2: Create the Campaign DataFrame
by Ronald

Using the crowdfunding.xlsx excel data located in the Resources directory, Ronald extracted the excel data to create a campaign dataframe. He extracted the column names and converted relevant columns to float and datetime data types. He then proceded to import the two .csv files in part one and merged them with the 'campaign' dataframe and export to a .csv file. 


## Part 3: Create the Contacts DataFrame
by Arsam & Ronald

Arsam and Ronald imported and extracted the contacts.xlsx excel data in the Resources directory to create a dataframe. Using the for loop, .iterows, json.loads, and list comprehension they interated through the dataframe and appended each row to a list. With the list of lists, they created a usable dataframe with their respective column names. The name column was also split then dropped. Finally the dataframe was exported to a .csv file.


## Part 4: Create the Crowdfunding Database
by Arsam & Ronald

Arsam and Ronald referred to the four CSV files to create a Entity Relational Database of tables through QuickDBD. Using the database schema they created a Postgres database and imported the four CSV files to their SQL tables. 
