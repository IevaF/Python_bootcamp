#!/usr/bin/env python
# coding: utf-8

# In[1]:


# yield:

# 1) Create a generator for prime numbers:
# Write a generator function that generates prime numbers. Each call to the generator should yield the next prime number.


# In[2]:


def prime_generator():
    primes = []
    num = 3 
        
    while True:
        is_prime = True
        
        for prime in primes:
            if num % prime == 0:
                is_prime = False
                break
        
        if is_prime:
            yield num
            primes.append(num) 
        
        num += 1

generator = prime_generator()

for i in range(10):
    print(next(generator))


# In[3]:


# 2) Create a generator to generate random numbers within a range:
# Write a generator function that generates random numbers within a specified range. Each call to the generator should yield a random number.


# In[4]:


import random

def random_number_generator(start, end):
    while True:
        yield random.randint(start, end)

start = 1  
end = 1000  
random_range = random_number_generator(start, end)

for i in range(1):
    random_number = next(random_range)
    print(random_number)


# In[5]:


# 3) Create a generator to generate permutations of a list:
# Write a generator function that generates all possible permutations of a given list. Each call to the generator should yield a different permutation.


# In[6]:


import itertools

def permutations_generator(list_):
    perm_generator = itertools.permutations(list_)

    while True:
        try:
            yield next(perm_generator)
        except StopIteration:
            break

my_list = [1, 2, 3, 4]
perm_generator = permutations_generator(my_list)

for i in range(100):
    try:
        permutation = next(perm_generator)
        print(permutation)
        
    except StopIteration:
        break


# In[7]:


# Decorators:
# 4) Implement a memoization decorator:
# Write a decorator that caches the result of a function for given input arguments. 
# Apply this decorator to a computationally expensive function and observe the improved performance by reusing cached results.


# In[8]:


import functools

def memoize(func):
    cache = {}

    @functools.wraps(func)
    def wrapper(*args, **kwargs):
        key = (args, frozenset(kwargs.items()))
        if key not in cache:
            cache[key] = func(*args, **kwargs)
        return cache[key]

    return wrapper

@memoize
def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)

for i in range(10):
    result = fibonacci(i)  
    print(f"Call {i+1}: Fibonacci({i}) = {result}")


# In[9]:


# 5)Implement a retry decorator:
# Write a decorator that retries the execution of a function a specified number of times in case of failures or exceptions. Apply this decorator to functions
# that interact with external services to handle temporary failures gracefully.


# In[10]:


import time

def retry(max_attempts=3, delay=1):
    def decorator_retry(func):
        @functools.wraps(func)
        def wrapper_retry(*args, **kwargs):
            for i in range(max_attempts):
                try:
                    return func(*args, **kwargs)
                except Exception as e:
                    print(f"Warning: {str(e)}")
                    time.sleep(delay)

        return wrapper_retry
    return decorator_retry

@retry(max_attempts=5, delay=2)
def connect_to_external_service():
    raise Exception("Connection failed")

connect_to_external_service()


# In[11]:


# 6) Create a rate-limiting decorator:
# Write a decorator that limits the rate at which a function can be called. Apply this decorator to functions that should not be invoked
# more than a certain number of times per second or minute.


# In[12]:


def rate_limit(max_calls=3, period=1):
    def decorator_rate_limit(func):
        call_times = [0]

        def wrapper_rate_limit(*args, **kwargs):
            call_times[:] = [t for t in call_times if t > time.time() - period]
            if len(call_times) >= max_calls:
                time.sleep(period - (time.time() - call_times[0]))
            result = func(*args, **kwargs)
            call_times.append(time.time())
            return result

        return wrapper_rate_limit
    return decorator_rate_limit

@rate_limit(max_calls=5, period=1)
def example_function():
    print("Function called")

for i in range(3):
    example_function()


# In[13]:


# Pivot

# 7) Pivot a DataFrame based on column values:
# Take a DataFrame with columns representing categories and values, and pivot it to reshape the data, with the category values as columns and corresponding values in the cells.


# In[14]:


import pandas as pa

data = {"Year":[2020,2020,2020,2021,2021,2021,2022,2022,2022],"Country":["Latvia","Lithuania","Estonia","Latvia","Lithuania","Estonia","Latvia","Lithuania","Estonia"],"GDP, billion":[34.6,56.91,31.37,39.73,66.41,37.19,41.15,70.33,38.1]}

df = pa.DataFrame(data)


# In[15]:


df


# In[16]:


pivot_df = df.pivot(index="Year",columns="Country",values="GDP, billion")


# In[17]:


pivot_df


# In[18]:


# 8) Aggregate and pivot data:
# Given a DataFrame with multiple columns, apply aggregation functions (e.g., sum, average) to the values and pivot the data based on specific columns.


# In[19]:


data = {"Export product":["Wood","Wood","Wood","Wood","Mineral fuels","Electrical","Electrical","Electrical","Machinery"],
       "Country":["Latvia","Latvia","Lithuania","Estonia","Latvia","Lithuania","Lithuania","Estonia","Latvia"],
       "Year":["2021","2022","2021","2021","2021","2021","2022","2022","2022"],
       "Value, billion":[3.8,2,2.7,2.03,4.1,2.3,4.1,3.6,2.6],
       "Amount":[65000,65100,75000,62570,35800,50000,58000,36000,68000]}
                
df = pa.DataFrame(data)


# In[20]:


df


# In[21]:


pivot_df_export = df.pivot_table(index="Export product",columns="Year",values=["Value, billion","Amount"],aggfunc=["sum","mean"])


# In[22]:


round_pivot_df = pivot_df_export.round(2).fillna("")
round_pivot_df


# In[23]:


# 9) Pivot with multi-index columns:
# Perform a pivot operation on a DataFrame with multi-index columns, reshaping the data based on specific levels of the column index.


# In[24]:


data = {
    ("Product_category"): ["Apple", "Apple", "Banana", "Banana"],
    ("Product_size"): ["small", "large", "small", "large"],
    ("Sales_2019"): [100, 200, 120, 180],
    ("Sales_2020"): [150, 250, 160, 220],
    ("Sales_2021"): [130, 220, 160, 220],
    ("Sales_2022"): [160, 251, 180, 270]
}

index = pa.MultiIndex.from_tuples(zip(data[("Product_category")], data[("Product_size")]))
sales_values = [data[("Sales_2019")], data[("Sales_2020")], data[("Sales_2021")], data[("Sales_2022")]]
data_table = pa.Series(sales_values, index=index)


# In[25]:


print(index)
data_table


# In[26]:


# 10) Take any data (your choice) and visualize the data using Ploty library. You can select any plot type,
# but you need to comment (write a comment in code) why the selected type of plot represents the data best


# In[27]:


dataframe = pa.read_excel('C:\\Ieva\\Python_Bootcamp\\Task folder\\29.06.2023_tasks\\unemployment.xlsx')

df = dataframe.rename(columns={'Unnamed: 0': 'Period', 'Bezdarbnieku skaits (tūkst.)': 'Number of unemployed (thousands)', 'Bezdarba līmenis , %': 'Unemployment,%'} )
df


# In[28]:


import plotly.graph_objects as go


# In[29]:


fig = go.Figure()
fig.add_trace(go.Scatter(x=df['Period'], y=df['Unemployment,%'], mode='lines', name='Number of unemployed (thousands)'))


fig.update_layout(title='Unemployment,% in Latvia from 2010-2023',
                  xaxis_title='Period',
                  yaxis_title='%')

fig.show()


# Using line chart is best way to represent data over a period of time


# In[30]:


fig = go.Figure()
fig.add_trace(go.Bar(x=df['Period'], y=df['Number of unemployed (thousands)'], name='Number of unemployed (thousands)'))


fig.update_layout(title='Number of unemployed (thousands) in Latvia from 2010-2023',
                  xaxis_title='Period',
                  yaxis_title='Number of unemployed (thousands)',
                  barmode='stack')
fig.show()

# Alternatively bar chart can be used to represent data over some period of time


# In[ ]:





# In[ ]:




