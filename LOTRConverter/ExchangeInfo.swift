//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by user on 02/02/26.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Exchange Rates")
                    .font(.largeTitle)
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brancdy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                ExchangeRate()
                
                Button {
                    dismiss()
                }  label: {
                    Text("Done")
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .foregroundStyle(.white)
                
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}

struct ExchangeRate: View {
    var body: some View {
        HStack {
            Image(.goldpiece)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
            
            Text("1 Gold Piece = 4 Gold Pennies")
            
            Image(.goldpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
        }
        
        HStack {
            Image(.goldpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
            
            Text("1 Gold Penny = 4 Silver Pieces")
            
            Image(.silverpiece)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
        }
        
        HStack {
            Image(.silverpiece)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
            
            Text("1 Silver Piece = 4 Silver Pennies")
            
            Image(.silverpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
        }
        
        HStack {
            Image(.silverpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
            
            Text("1 Silver Penny = 100 Cooper Pennies")
            
            Image(.copperpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
        }
    }
}
