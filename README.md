
<!-- README.md is generated from README.Rmd. Please edit that file -->

# assessmentAACSB

This is the repository for the skill assessment for AACSB’s Manager,
Data Analysis position. The assessment should be completed in an hour
and the results emailed to <jeanine.romano@aacsb.edu>.

## Instructions

1.  You may use any books or online resources you want during this
    examination, but you may not communicate with any person other than
    Jeanine Romano.
2.  You are required to use the RStudio IDE for this exam. You may use
    either the desktop edition or rstudio.cloud as you prefer.

The assessment consists of 3 portions:

1.  Data analysis
2.  Write-a-function and package maintenance
3.  Modify and parameterize an R Markdown document

## Portion \#1

The files in `data` contain information about college tuition and
diversity. Using the [Data Dictionary](#data-dictionary) and the
`tidyverse`, answer the following questions:

1.  How many schools reported diversity data?
2.  What is the difference between the minimum and maximum
    out-of-state-tuition (exclude room and board) charged?
3.  What was the total enrollment for all private schools that reported
    tuition and diversity data?
4.  What was the total enrollment for each diversity category
    (Group/Racial/Gender) for all schools in Florida that reported
    tuition and diversity data?

You may do your work in an R script or an R Markdown fil. Whichever you
choose, it must be present in the final assessmentAACSB repo submission.

***Note:** Some questions require tuition and diversity data to be
joined.*

## Portion \#2

In the `portion_2.R` file in the `R` folder, write a function called
`get_category_by_state` that takes a tibble/data frame and a state
abbreviation as input and returns a tibble of the total enrollment for
each Group/Racial/Gender category for that given state. For example,
`get_category_by_state(joined_data, "TX")` should return the following:

| category                           | enrollment |
| :--------------------------------- | ---------: |
| American Indian / Alaska Native    |      99623 |
| Asian                              |     692724 |
| Black                              |    1669090 |
| Hispanic                           |    2009793 |
| Native Hawaiian / Pacific Islander |      31367 |
| Non-Resident Foreign               |     585993 |
| Total Minority                     |    4880402 |
| Two Or More Races                  |     377805 |
| Unknown                            |     645650 |
| White                              |    7210561 |
| Women                              |    7510839 |

Ensure that the function is exported and rebuild/install the package.
Afterward, increase the package version to 1.0.0.

***Hint:** Look in the `hello.R` file under the `R` folder for some
package authoring help.*

## Portion \#3

1.  Modify the YAML header of the `portion_3.Rmd` file so that a table
    of contents is automatically created each time the document is knit,
    and fix any errors that are preventing the document from knitting
    cleanly.
2.  Convert this R Markdown report into a parameterized report with the
    state code as its parameter. Knit a new assessment for Rhode Island.

## Data Dictionary

# `tuition_cost.csv`

| variable                | class     | description                                                                           |
| :---------------------- | :-------- | :------------------------------------------------------------------------------------ |
| name                    | character | School name                                                                           |
| state                   | character | State name                                                                            |
| state\_code             | character | State Abbreviation                                                                    |
| type                    | character | Type: Public, private, for-profit                                                     |
| degree\_length          | character | 4 year or 2 year degree                                                               |
| room\_and\_board        | double    | Room and board in USD                                                                 |
| in\_state\_tuition      | double    | Tuition for in-state residents in USD                                                 |
| in\_state\_total        | double    | Total cost for in-state residents in USD (sum of room & board + in state tuition)     |
| out\_of\_state\_tuition | double    | Tuition for out-of-state residents in USD                                             |
| out\_of\_state\_total   | double    | Total cost for in-state residents in USD (sum of room & board + out of state tuition) |

# `diversity_school.csv`

| variable          | class     | description                  |
| :---------------- | :-------- | :--------------------------- |
| name              | character | School name                  |
| total\_enrollment | double    | Total enrollment of students |
| state             | character | State name                   |
| category          | character | Group/Racial/Gender category |
| enrollment        | double    | enrollment by category       |
