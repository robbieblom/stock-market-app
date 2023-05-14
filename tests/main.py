import pprint as pp

from stock_market_bytetheory import SP500History


def main():
    marketHistory = SP500History()
    pp.pprint(
        marketHistory.getPricingMetricsForIndustry(
            "Diversified Financial Services", "Financials"
        )
    )


if __name__ == "__main__":
    main()
