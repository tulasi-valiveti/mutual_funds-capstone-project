import pandas as pd
from pathlib import Path

data_path = Path("data/raw")

for file in data_path.glob("*.csv"):
    df = pd.read_csv(file)

    print("\n" + "="*50)
    print(file.name)
    print("="*50)
    print("Shape:", df.shape)
    print("\nColumns:")
    print(df.dtypes)
    print("\nFirst 5 Rows:")
    print(df.head())




import requests
import pandas as pd

url = "https://api.mfapi.in/mf/125497"

response = requests.get(url)

data = response.json()

nav_df = pd.DataFrame(data["data"])

nav_df.to_csv(
    "data/raw/hdfc_top100_nav.csv",
    index=False
)

print("Saved Successfully")