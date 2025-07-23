print("=== Personal Information System ===")
first_name = input("First name: ")
last_name = input("Last name: ")
age_str = input("Age: ")
hobby = input("Favorite hobby: ")
# Convert age to integer
age = int(age_str)

# Calculate future ages
age_in_5 = age + 5
age_in_10 = age + 10
age_in_20 = age + 20

# Create full name with proper formatting
full_name = first_name + " " + last_name
full_name_title = full_name.title()
full_name_upper = full_name.upper()
full_name_lower = full_name.lower()

# Calculate name length without spaces
name_length = len(first_name + last_name)

# Display user information
print("=== Here's your information! ===")
print(f"Full name: {full_name_title}")
print(f"Name length: {name_length} characters")
print(f"In 5 years you'll be: {age_in_5}")
print(f"In 10 years you'll be: {age_in_10}")
print(f"In 20 years you'll be: {age_in_20}")
print(f"{full_name_upper} - that looks impressive in all caps!")
print(f"{full_name_lower} - and peaceful in lowercase.")
print(f"{hobby.capitalize()} is a wonderful hobby!")
print(f"Keep enjoying {hobby}, {first_name.title()}!")
 

 
 
 
 