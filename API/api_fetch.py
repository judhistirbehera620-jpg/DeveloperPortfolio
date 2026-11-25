import json
import urllib.request

url = "https://jsonplaceholder.typicode.com/users"

try:
    with urllib.request.urlopen(url) as response:
        users = json.loads(response.read().decode())

    with open("users.json", "w") as file:
        json.dump(users, file, indent=4)

    print("API data fetched successfully!")
    print("Total users:", len(users))
    print("Saved to users.json")

except Exception as e:
    print("Error:", e)
