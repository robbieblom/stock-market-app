from stock_market_bytetheory import SP500History

def main():
   marketHistory = SP500History() 
   print(marketHistory.getPricingMetricsForIndustry('Banks', 'Financials'))
   # print(marketHistory.getVolumeWeightedAveragePrice('GOOG'))

if __name__ == "__main__":
    main()
