import Foundation


struct Coin: Identifiable, Codable {
    var id, symbol, name: String
    var image: String
    var currentPrice: Double
    var marketCap, marketCapRank, fullyDilutedValuation, totalVolume: Double?
    var high24H, low24H, priceChange24H, priceChangePercentage24H: Double?
    var marketCapChange24H: Double?
    var marketCapChangePercentage24H: Double?
    var circulatingSupply, totalSupply, maxSupply, ath: Double?
    var athChangePercentage: Double?
    var athDate: String?
    var atl, atlChangePercentage: Double?
    var atlDate: String?
    var lastUpdated: String?
    var sparklineIn7D: SparklineIn7D?
    var priceChangePercentage24HInCurrency: Double?
    var currentHolding: Double?
    
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
    }
    
    var currentHoldingsValue: Double {
        return (currentHolding ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    
    func updateHoldings(amount: Double) -> Coin {
        return Coin(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHolding: amount)
    }
}

   
struct SparklineIn7D: Codable {
        var price: [Double]?
    }

// API Info
/*
 URL: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
 [
 {
 "id": "bitcoin",
 "symbol": "btc",
 "name": "Bitcoin",
 "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
 "current_price": 19529.18,
 "market_cap": 374606993176,
 "market_cap_rank": 1,
 "fully_diluted_valuation": 410112759181,
 "total_volume": 25619854728,
 "high_24h": 19614.89,
 "low_24h": 19121.88,
 "price_change_24h": 395.8,
 "price_change_percentage_24h": 2.06863,
 "market_cap_change_24h": 7719470608,
 "market_cap_change_percentage_24h": 2.10404,
 "circulating_supply": 19181912,
 "total_supply": 21000000,
 "max_supply": 21000000,
 "ath": 69045,
 "ath_change_percentage": -71.7143,
 "ath_date": "2021-11-10T14:24:11.849Z",
 "atl": 67.81,
 "atl_change_percentage": 28701.18636,
 "atl_date": "2013-07-06T00:00:00.000Z",
 "roi": null,
 "last_updated": "2022-10-17T18:02:54.381Z",
 "sparkline_in_7d": {
 "price": [
 19350.334501131296,
 19191.380029580385,
 19550.386605346102,
 19502.87364837517
 ]
 },
 "price_change_percentage_24h_in_currency": 2.0686321181174177
 }
 ]
 */
