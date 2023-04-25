from stock_market_bytetheory import SP500History

def main():
   marketHistory = SP500History() 
   print(marketHistory.getAllSectorsAndIndustries())

if __name__ == "__main__":
    main()
