import requests
import json


# URL of the Flask server
url = "http://localhost:5000/users"


# Data to send in the request
data = {
    "name": "Rayner Kovachevich"
}

# Send the Post request
response = requests.post(url, json=data)

# Check if the request was succeful
if response.status_code == 201:
    print("User added seccesfully!")
    print("Response:", response.json())

else:
    print("Failed to add User:", response.status_code)
    print("Response:", response.text)    