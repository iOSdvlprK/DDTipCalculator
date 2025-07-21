//
//  LandscapeTipCalculatorView.swift
//  DDTipCalculator
//
//  Created by joe on 7/20/25.
//

import SwiftUI

struct LandscapeTipCalculatorView: View {
    @State private var tipModel = TipModel(
        tipPercentage: 20,
        split: 1,
        bill: 0.0
    )
    
    @State private var isFocused: Bool = false
    
    let maxSplit: Int = 10
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                VStack(alignment: .leading) {
                    TitleView()
                    
                    EnterTotalView(bill: $tipModel.bill, isFocused: $isFocused)
                    
                    HStack {
                        ChooseTipView(tipPercentage: $tipModel.tipPercentage)
                        
                        SplitView(split: $tipModel.split, alignment: .center)
                    }
                }
                
                // payment summary
                if !isFocused {
                    PaymentSummaryView(tipModel: tipModel)
                }
            }
            .padding()
        }
        .onTapGesture {
            UIApplication
                .shared
                .sendAction(
                    #selector(UIResponder.resignFirstResponder),
                    to: nil,
                    from: nil,
                    for: nil
                )
        }
    }
}

#Preview("Landscape", traits: .landscapeLeft) {
    LandscapeTipCalculatorView()
}
