//
//  ExchangeInfo.swift
//  LOTRConverter17
//
//  Created by Eduardo Varela Hernández on 17/03/24.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            
            //Background parchment image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                    
                // Description text
                Text(exchangeRatesDescription)
                    .font(.title2)
                    .padding()
                    .multilineTextAlignment(.center)
                
                // Exchange rates
                ExchangeRate(
                    leftImage: .goldpiece,
                    text:"1 Gold Piece = 4 Gold Pennies",
                    rightImage: .goldpenny)
                
                ExchangeRate(
                    leftImage: .goldpenny,
                    text:"1 Gold Penny = 4 Silver Pieces",
                    rightImage: .silverpiece)
                
                ExchangeRate(
                    leftImage: .silverpiece,
                    text:"1 Silver Piece = 4 Silver Pennies",
                    rightImage: .silverpenny)
                
                ExchangeRate(
                    leftImage: .silverpenny,
                    text:"1 Silver Penny = 100 Copper Pennies",
                    rightImage: .copperpenny)

                // Done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}

