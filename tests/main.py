from stock_market_bytetheory import SP500History
import pprint as pp

def main():
   marketHistory = SP500History() 
   pp.pprint(marketHistory.getPricingMetricsForIndustry('Banks', 'Financials'))

if __name__ == "__main__":
    main()
