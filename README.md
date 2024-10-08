# Crowdfunding_ETL

Build an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, upload the CSV file data into a Postgres database.

## Acknowledgements

 - Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.

## Mini Project Subsections

**1. Created the Category and Subcategory DataFrames**  

Imported the crowdfunding.xlsx files in a dataframe.  

A Category DataFrame is created which contains: 
- "category_id" column with sequential entries from "cat1" to "cat9", where 9 is the number of unique categories
- "category" column that contains the category titles

The Category DataFrame is exported as category.csv

A Subcategory DataFrame is Created which contains:
- "subcategory_id" column with sequential entries from "subcat1" to "subcat24", where 24 is the number of unique subcategories
- "subcategory" column that contains the subcategory titles 

The subcategory DataFrame is exported as subcategory.csv 

**2. Created the Campaign DataFrame**  

The DataFrame has the required columns with the required renaming and conversion to required datatypes:
- Renamed the blurb, launched_at, and deadline columns.
- "goal" and "pledged" column converted to a float data type
- "launch_date" and "end_date" columns with the UTC times converted to the datetime format
- Merged the campaign_df with the category_df on the "category" column and the subcategory_df on the "subcategory" column.

The campaign DataFrame is exported as campaign.csv  

**3. Created the Contacts DataFrame**  

Imported the contacts.xlsx Excel data into a dataframe and used -

Option 1: Python dictionary methods to create the Contacts dataframe.

- Iterated through the DataFrame using iterrows function, converted each row to a dictionary,row_dict, using json.loads().
- Iterated through each dictionary and extracted the keys to be used as the column names for the dataframe and extracted dictionary values from the keys both by using a Python list comprehension.Added the values for each row to a new list, dict_values.
- Create a new DataFrame that contains the extracted data.
- Split each "name" column value into a first and last name, and placed each in a new column.

The DataFrame is cleaned and exported as contacts.csv.

*For purposes of regex practice only*

Completed- 
Option 2: Regular Expressions to create Contacts dataframe.

- Import the contacts.xlsx file into a DataFrame.
- Extract the "contact_id", "name", and "email" columns by using regular expressions.
- Create a new DataFrame with the extracted data.
- Convert the "contact_id" column to the integer type.
- Split each "name" column value into a first and a last name, and place each in a new column.

**4. Created the Crowdfunding Database**

- Inspected the four CSV files created - category.csv, subcategory.csv, campaign.csv,and contacts.csv and sketched an ERD of the tables by using QuickDBDLinks.

- Used the information from the ERD to create a table schema for each CSV file. Specified the data types, primary keys, foreign keys, and other constraints.

- Saved the database schema as a Postgres file named crowdfunding_db_schema.sql.

- Created a new Postgres database, named crowdfunding_db.

- Created the tables in the correct order to handle the foreign keys using the crowdfunding_db_schema.sql in the postgres query tool.

- Verified the table creation by running a SELECT statement for each table.

- Imported each CSV file into its corresponding SQL table using import functionality in Postgres. Tables are to be populated in the same order as these were created.

- Verified that each table has the correct data by running a SELECT statement for each.
