import pandas as pd

# How many people of each race are represented in this dataset? This should be a Pandas series with race names as the index labels. (race column)
df = pd.read_csv('adult.data.csv')
print(df['race'].value_counts())

# What is the average age of men?
print(df[df['sex'] == 'Male']['age'].mean())

# What is the percentage of people who have a Bachelor's degree?
total_count = len(df)
bachelors_count = len(df[df['education'] == 'Bachelors'])
percentage_bachelors = (bachelors_count / total_count) * 100
print(percentage_bachelors)

# What percentage of people with advanced education (Bachelors, Masters, or Doctorate) make more than 50K?
advanced_education = df['education'].isin(['Bachelors', 'Masters', 'Doctorate'])
higher_education = df[advanced_education]
higher_education_rich = higher_education[higher_education['salary'] == '>50K']
percentage_higher_education_rich = (len(higher_education_rich) / len(higher_education)) * 100
print(percentage_higher_education_rich)

# What percentage of people without advanced education make more than 50K?
lower_education = df[~advanced_education]
lower_education_rich = lower_education[lower_education['salary'] == '>50K']
percentage_lower_education_rich = (len(lower_education_rich) / len(lower_education)) * 100
print(percentage_lower_education_rich)

# What is the minimum number of hours a person works per week (hours-per-week feature)?
min_work_hours = df['hours-per-week'].min()
print(min_work_hours)

# What percentage of the people who work the minimum number of hours per week have a salary of >50K?
min_workers = df[df['hours-per-week'] == min_work_hours]
rich_min_workers = min_workers[min_workers['salary'] == '>50K']
percentage_rich_min_workers = (len(rich_min_workers) / len(min_workers)) * 100
print(percentage_rich_min_workers)

# What country has the highest percentage of people that earn >50K?
country_counts = df['native-country'].value_counts()
rich_country_counts = df[df['salary'] == '>50K']['native-country'].value_counts()
country_percentage = (rich_country_counts / country_counts) * 100
highest_earning_country = country_percentage.idxmax()
highest_earning_percentage = country_percentage.max()
print(highest_earning_country, highest_earning_percentage)

# Identify the most popular occupation for those who earn >50K in India.
india_rich = df[(df['native-country'] == 'India') & (df['salary'] == '>50K')]
top_occupation_india = india_rich['occupation'].value_counts().idxmax()
print(top_occupation_india)