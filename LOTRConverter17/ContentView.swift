//
//  ContentView.swift
//  LOTRConverter17
//
//  Created by Eduardo Varela Hernández on 16/03/24.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount =  ""
    @State var rightAmount = ""
 
    var body: some View {
        ZStack{
            // Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                // Prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency exchangue text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                // Currency convertion section
                HStack{
                    // Left convertion section
                    VStack{
                        // Currency
                        HStack{
                            // Currency image
                            Image(.silverpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        
                        // Textfield
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    .padding(.leading)
                    
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .symbolEffect(.pulse)
                    
                    // Right conversion section
                    VStack{
                        // Currency
                        HStack{
                            // Currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            // Currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        
                        // Textfield
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.trailing)
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                .colorScheme(.light)
                
                Spacer()
                
                // Info button
                
                HStack {
                    Spacer()
                    Button{
                        showExchangeInfo.toggle()
                        print("showExchangeInfo : \(showExchangeInfo)")
                        
                    } label:{
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo){
                        ExchangeInfo()
                    }
                }
                
            }
            //            .border(.blue)
            
        }
    }
}

#Preview {
    ContentView()
}
