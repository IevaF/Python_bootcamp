#!/usr/bin/env python
# coding: utf-8

# In[16]:


#Map and Filter:
# 1)Use map to double each element in a list of numbers.
# Use filter to select only the odd numbers from a list of integers.

numbers = [8,10,15,4,-1,-6,-7]

def multiply(element):
    return element * 2

numbers_new = list(map(multiply,numbers))
print(numbers_new)

odd_numbers = list(filter(lambda element: element % 2 != 0 ,numbers))
print(odd_numbers)


# In[216]:


# Pandas:
# 2)Read a CSV file into a pandas DataFrame and display the first few rows.

import pandas as pd
dataframe = pd.read_csv('C:\\Ieva\\Python_Bootcamp\\Task folder\\countries of the world.csv')
dataframe


# In[219]:


# Group a DataFrame by a specific column and calculate the average of another column.

grouped_dataframe = dataframe.groupby(by="Region")["Population"].mean()

print("Average population grouped by Region:", grouped_dataframe)


# In[239]:


# Merge two DataFrames based on a common column.

# At first I splitted the dataframe in two seperate dataframes 
dataframe_1 = dataframe[['Country', 'Region', 'Population', 'Area (sq. mi.)']]
dataframe_1
dataframe_2 = dataframe[['Country', 'Pop. Density (per sq. mi.)', 'Coastline (coast/area ratio)', 'Net migration', 'GDP ($ per capita)']]
dataframe_2

# And then merged dataframes 
merged_dataframe = pd.merge(dataframe_1, dataframe_2, on='Country')
merged_dataframe


# In[172]:


# Namedtuple:
# 3)Define a Person named tuple with fields for name, age, and city. Create instances of Person and access their attributes.

from collections import namedtuple

Person = namedtuple("Person",["name","age","city"])

person1 = Person('Peter', 23, 'Paris')
person2 = Person('Karlis', 39, 'Riga')
person3 = Person('Laima',19, 'Stockholm')

persons = [person1, person2, person3]

print(persons)


# In[286]:


# Counter:
# 4)Count the frequency of each word in a given text and display the top 5 most common words.

from collections import Counter
text = "There was a magic about the sea. People were drawn to it. People wanted to love by it, swim in it, play in it, look at it. It was a living thing that was as unpredictable as a great stage actor: it could be calm and welcoming, opening its arms to embrace its audience one moment, but then could explode with its stormy tempers, flinging people around, wanting them out, attacking coastlines, breaking down islands."
text = text.lower().replace('.', '').replace(',', '')

text_splitted = text.split()
word_counts = Counter(text_splitted)
print("Count of each word:", word_counts)

top_words = word_counts.most_common(5)
print("Top 5 words", top_words)


# In[110]:


# Merge two counters together and calculate the total count of each element.
text_1 = "There was a magic about the sea. People were drawn to it."
text_2 = "It a living thing that was as unpredictable as a great stage actor: it could be calm and welcoming, opening its arms to embrace its audience one moment, but then could explode with its stormy tempers, flinging people around, wanting them out, attacking coastlines, breaking down islands"

merged_text = text_1 + " " + text_2
element_counts = Counter(merged_text)
print(merged_text)
print("Count of each element:", element_counts)


# In[134]:


# Deque:
# 5)Use a deque to implement a queue and perform enqueue and dequeue operations.
# Reverse the order of elements in a deque.

from collections import deque
que = deque()
que.append("person1")
que.append("person2")
que.append("person3")
que.append("Person4")

dequeued_element = que.popleft()
print("Dequeued element is:", dequeued_element)

que.reverse()
print("Elements in reversed order:")
for element in que:
    print(element)


# In[255]:


# Defaultdict:
# 6)Create a defaultdict that maps a character to a list of words starting with that character.

from collections import defaultdict

words = ['cat', 'elephant', 'bear', 'dog', 'giraffe', 'fox', 'mouse', 'bat', 'monkey']

character_map = defaultdict(list)
for word in words:
    first_character = word[0]
    character_map[first_character].append(word)

for first_character, word_sorted in character_map.items():
    print(f"Words starting with '{first_character}': {word_sorted}")


# In[284]:


# Calculate the sum of values for each key in a dictionary using a defaultdict.

words = {'cat': 6, 'elephant': 8, 'bear': 7, 'dog': 3, 'giraffe': 2, 'cow': 9, 'mouse': 1, 'duck': 12, 'bat':6, 'eagle':4}

words_sum = defaultdict(int)
         
for word, value in words.items():
    words_sum[word[0]] += value

for key, total_score in words_sum.items():
    print(f"Sum of values for key starting with '{key}': {total_score}")


# In[267]:


# Reduce:
# 7)Use reduce to find the maximum element in a list of numbers.
# Combine a list of strings into a single string using reduce.

from functools import reduce

max_number = reduce(max, numbers_new)
print("Maximum element is:", max_number)

text = ["There", " ", "was", " ", "a", " ", "magic", " ", "about", " ", "the", " ", "sea", "!"]
combined_text = reduce(str.__add__, text)
print("Combined text is:", combined_text)


# In[ ]:





# In[ ]:


# Databases (SQL):
# 1) Select any free API (the choice is up to you, you can use any from https://rapidapi.com/collection/list-of-free-apis).
# 2) Create the database which stores the infomration related to the API chosen (at least 2 tables).
# 3) In Python, 3.1) implement the logic which fetches the data from API and moves it to Database 3.2) Fetches the data from database and 3.2.1) If there is the API functionality
# (POST/GET request) which allows you to use the data from database in an API call, do it 3.2.2.) If not - display the data from database as Pandas dataframe


# In[90]:


import requests
import mysql.connector

# get weather_places data

url = "https://ai-weather-by-meteosource.p.rapidapi.com/find_places"
querystring = {"text": "tallin", "language": "en"}
headers = {
    "X-RapidAPI-Key": "ad115e2d97msh53a5e5a941aa8c8p1d4789jsn445169e5df6e",
    "X-RapidAPI-Host": "ai-weather-by-meteosource.p.rapidapi.com"
}

response = requests.get(url, headers=headers, params=querystring)
data = response.json()

print(response.json())


# In[126]:


# get weather_conditions data

url = "https://ai-weather-by-meteosource.p.rapidapi.com/current"

querystring = {"lat":"41.71561","lon":"-122.42282","timezone":"auto","language":"en","units":"auto"}

headers = {
	"X-RapidAPI-Key": "ad115e2d97msh53a5e5a941aa8c8p1d4789jsn445169e5df6e",
	"X-RapidAPI-Host": "ai-weather-by-meteosource.p.rapidapi.com"
}

response2 = requests.get(url, headers=headers, params=querystring)
data2 = response2.json()

print(response2.json())


# In[92]:


# connecting to database

conn = mysql.connector.connect(user='root',
                              password='',
                              host='localhost',
                              database='19.06.2023_task')
cursor = conn.cursor()


# In[123]:


# insert data in database weatherplaces table

data = [] 
for place in data:

    place_id = place['place_id']
    name = place['name']
    adm_area1 = place['adm_area1']
    adm_area2 = place['adm_area2']
    country = place['country']
    lat = place['lat']
    lon = place['lon']
    timezone = place['timezone']
    place_type = place['type']

    
    sql = "INSERT INTO WeatherPlaces (place_id, name, adm_area1, adm_area2, country, lat, lon, timezone, type) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s) ON DUPLICATE KEY UPDATE name=VALUES(name), adm_area1=VALUES(adm_area1), adm_area2=VALUES(adm_area2), country=VALUES(country), lat=VALUES(lat), lon=VALUES(lon), timezone=VALUES(timezone), type=VALUES(type)"
    values = (place_id, name, adm_area1, adm_area2, country, lat, lon, timezone, place_type)

    cursor.execute(sql, values)
    

    conn.commit()


# In[124]:


# insert data in database weatherconditions table

weathers = data2 
weathers = [] 
for weather in weathers:

    
    place_id = weather['place_id']
    latitude = weather['latitude']
    longitude = weather['longitude']
    timezone = weather['timezone']
    icon = weather['units']
    icon_num = weather['icon_num']
    summary = weather['summary']
    temperature = weather['temperature']
    feels_like = weather['feels_like']

    
    sql = "INSERT INTO weatherconditions (place_id, latitude, longitude, timezone, units, icon_num, summary, temperature, feels_like) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s) ON DUPLICATE KEY UPDATE latitude=VALUES(latitude), longitude=VALUES(longitude), timezone=VALUES(timezone), icon_num=VALUES(icon_num), summary=VALUES(summary), lon=VALUES(lon), temperature=VALUES(temperature), feels_like=VALUES(feels_like)"
    cursor.execute(sql, (place_id, latitude, longitude, timezone, units, icon_num, summary, temperature, feels_like))

    conn.commit()


# In[117]:


# Fetching the data from database and display the data from database as Pandas dataframe

import pandas as pd


conn = mysql.connector.connect()
# MySQL database information
db_config = {
   "user":'root',
   "password":'',
   "host":'localhost',
   "database":'19.06.2023_task',
}

conn = mysql.connector.connect(**db_config)
df = pd.read_sql("SELECT * FROM WeatherPlaces", conn)
conn.close()
df


# In[ ]:





# In[ ]:




