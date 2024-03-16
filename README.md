# SQL-Advanced-Course-Project

# Question 1:

Level: Simple

Topic: DISTINCT

Task: Create a list of all the different (distinct) replacement costs of the films.

Question: What's the lowest replacement cost?

Answer: 9.99



# Question 2:

Level: Moderate

Topic: CASE + GROUP BY

Task: Write a query that gives an overview of how many films have replacements costs in the following cost ranges

low: 9.99 - 19.99

medium: 20.00 - 24.99

high: 25.00 - 29.99

Question: How many films have a replacement cost in the "low" group?

Answer: 514



# Question 3:

Level: Moderate

Topic: JOIN

Task: Create a list of the film titles including their title, length, and category name ordered descendingly by length. Filter the results to only the movies in the category 'Drama' or 'Sports'.

Question: In which category is the longest film and how long is it?

Answer: Sports and 184



# Question 4:

Level: Moderate

Topic: JOIN & GROUP BY

Task: Create an overview of how many movies (titles) there are in each category (name).

Question: Which category (name) is the most common among the films?

Answer: Sports with 74 titles



# Question 5:

Level: Moderate

Topic: JOIN & GROUP BY

Task: Create an overview of the actors' first and last names and in how many movies they appear in.

Question: Which actor is part of most movies??

Answer: Susan Davis with 54 movies



# Question 6:

Level: Moderate

Topic: LEFT JOIN & FILTERING

Task: Create an overview of the addresses that are not associated to any customer.

Question: How many addresses are that?

Answer: 4



# Question 7:

Level: Moderate

Topic: JOIN & GROUP BY

Task: Create the overview of the sales  to determine the from which city (we are interested in the city in which the customer lives, not where the store is) most sales occur.

Question: What city is that and how much is the amount?

Answer: Saint-Denis with a total amount of 211.55



# Question 8:

Level: Moderate to difficult

Topic: JOIN & GROUP BY

Task: Create an overview of the revenue (sum of amount) grouped by a column in the format "country, city".

Question: Which country, city has the least sales?

Answer: Poland,Bydgoszcz with a total amount of 27.93.



# Question 9:

Level: Difficult

Topic: Uncorrelated subquery

Task: Create a list with the average of the sales amount each staff_id has per customer.

Question: Which staff_id makes on average more revenue per customer?

Answer: staff_id 2 with an average revenue of 51.85 per customer.



# Question 10:

Level: Difficult to very difficult

Topic: EXTRACT + Uncorrelated subquery

Task: Create a query that shows average daily revenue of all Sundays.

Question: What is the daily average revenue of all Sundays?

Answer: 1410.65
