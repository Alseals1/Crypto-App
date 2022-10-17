import SwiftUI

struct CoinRowView: View {
    let coin: Coin
    let showHoldingColums: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            leftColum
            
            Spacer()
            
            if showHoldingColums {
                centerColumn
            }
            
          rightColumn
            
        }
        .font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: dev.coin, showHoldingColums: true)
                .previewLayout(.sizeThatFits)
            
            CoinRowView(coin: dev.coin, showHoldingColums: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            
        }
    }
}


extension CoinRowView {
    private var leftColum: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryTextColor)
                .frame(minWidth: 30)
            CoinImageView(coin: coin)
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accentColor)
        }
    }
    private var centerColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
                .bold()
            Text((coin.currentHolding ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accentColor)
    }
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith2Decimals())
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "0")
                .foregroundColor((coin.priceChangePercentage24H ?? 0) >= 0 ? Color.theme.greenColor : Color.theme.redColor)
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}
