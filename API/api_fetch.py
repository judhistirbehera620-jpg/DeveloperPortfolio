import json
import urllib.request
from datetime import datetime

# Student: Judhistir Behera
# Roll Number: 2601730433

API_URL = "https://jsonplaceholder.typicode.com/posts/1"

print("====================================")
print("       STUDENT API PROJECT")
print("====================================")
print("Student: Judhistir Behera")
print("Roll Number: 2601730433")
print("Connecting to public API...")

try:
    request = urllib.request.Request(
        API_URL,
        headers={"User-Agent": "DeveloperPortfolio/1.0"}
    )

    with urllib.request.urlopen(request, timeout=15) as response:
        data = json.loads(response.read().decode("utf-8"))

    with open("API/api_response.json", "w", encoding="utf-8") as file:
        json.dump(data, file, indent=4)

    print("\nAPI RESPONSE RECEIVED SUCCESSFULLY!")
    print("HTTP Status: 200")
    print("Post ID:", data["id"])
    print("Title:", data["title"])
    print("Body:", data["body"])
    print("\nJSON saved to API/api_response.json")

except Exception as error:
    print("API request failed:", error)
