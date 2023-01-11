import yfinance as yf
import pandas as pd
import numpy as np
from datetime import date, timedelta
from matplotlib import pyplot as plt

#Current Assets Held
symbols = ["BABA", "C", "JPM", "MU", "PLTR", "ETH-USD", "ADA-USD"]
colors = ['red','black','blue', "green", "purple", "yellow", "red"]
#Current Amount of Assets Held
rothshares = [13, 25, 29, 30, 0, 0, 0]
othershares = [0, 0, 0, 0, 101, 0.55866248, 6988.3273]
investshares = [47, 0, 0, 0, 361, 0, 0]


shares = [0,0,0,0,0,0,0]
for i in range(len(shares)):
    shares[i] = rothshares[i]+othershares[i]+investshares[i]

tickers = [yf.Ticker(symbols[i]) for i in range(len(symbols))]

def get_current_price(symbol):
    ticker = yf.Ticker(symbol)
    todays_data = ticker.history(period='1d')
    return todays_data['Close'][0]

#Values of each asset
asset_prices = {}
for symbol in symbols:
    asset_prices[symbol] = get_current_price(symbol)
#$ worth of asset
asset_values = [get_current_price(symbols[i])*shares[i] for i in range(len(symbols))]
#Current net worth
net_worth = sum(asset_values)

#GRAPHs
timespan = 365
Start = date.today() - timedelta(timespan)
Start.strftime('%Y-%m-%d')

End = date.today() + timedelta(2)
End.strftime('%Y-%m-%d')
########################
def historical_closes(symbol) :
    ClosingPrices = pd.DataFrame(yf.download(symbol, start=Start, end=End) ['Adj Close'])
    return ClosingPrices

def asset_worth_closes(symbol) :
    ClosingPrices = historical_closes(symbol).squeeze()
    NetPrices = ClosingPrices * shares[symbols.index(symbol)]
    return NetPrices

def net_worth_closes() :
    NetWorth = historical_closes("BABA").squeeze()*0
    for i in range(len(symbols)):
       NetWorth += asset_worth_closes(symbols[i])
    return NetWorth
#########################
BABA = asset_worth_closes("BABA")
ETH = asset_worth_closes("ETH-USD")
ADA = asset_worth_closes("ADA-USD")
NET = net_worth_closes()

plt.plot(BABA)
plt.plot(ETH)
plt.plot(ADA)

plt.rc('font', size=3)
plt.show()

cash = 783+2451

print(asset_prices)
print(asset_values)
print(net_worth+cash)