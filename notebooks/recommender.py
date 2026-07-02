import pandas as pd

df = pd.read_csv("../data/processed/clean_scheme_performance.csv")

df = df[["scheme_name", "risk_grade", "sharpe_ratio"]]

# Remove missing values
df = df.dropna(subset=["risk_grade", "sharpe_ratio"])

# Remove duplicate schemes (if any)
df = df.drop_duplicates(subset=["scheme_name"])

risk = input("Enter Risk Appetite (Low / Moderate / High): ").strip().title()

valid_risk = ["Low", "Moderate", "High"]

if risk not in valid_risk:
    print("\nInvalid Risk Appetite!")
    print("Please enter: Low, Moderate or High")

else:

    recommendations = df[df["risk_grade"] == risk]
    recommendations = recommendations.sort_values(
        by="sharpe_ratio",
        ascending=False
    )

    top3 = recommendations.head(3)
    print("\n")
    print("=" * 65)
    print(f"Top 3 Recommended Funds for {risk} Risk Investors")
    print("=" * 65)

    print(
        top3[
            [
                "scheme_name",
                "risk_grade",
                "sharpe_ratio"
            ]
        ].to_string(index=False)
    )
    top3.to_csv(
        "../data/analysis_results/fund_recommendations.csv",
        index=False
    )

    print("\nRecommendations saved successfully!")