# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "Select projects.title, Sum(pledges.amount) From projects Inner Join pledges ON pledges.project_id = projects.id Group By projects.id Order By projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "Select users.name, users.age, Sum(pledges.amount) From users Inner Join pledges ON pledges.user_id = users.id Group By users.id Order By users.name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "Select projects.title, Sum(pledges.amount) - projects.funding_goal From Projects Inner Join pledges On pledges.project_id = projects.id Group By projects.id Having Sum(pledges.amount) >= projects.funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "Select users.name, Sum(pledges.amount) From users Inner Join pledges On pledges.user_id = users.id Group By users.name Order by Sum(pledges.amount);"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "Select projects.category, pledges.amount From projects Inner Join pledges On pledges.project_id = projects.id Where projects.category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "Select projects.category, Sum(pledges.amount) From projects Inner Join pledges On pledges.project_id = projects.id Where projects.category = 'books';"
end
