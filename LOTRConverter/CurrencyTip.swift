//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by user on 03/02/26.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change currency")
    
    var message: Text? = Text("You can tap the left of right currency to bring up the Select Currency screen.")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}
