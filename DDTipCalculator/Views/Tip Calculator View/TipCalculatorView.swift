//
//  TipCalculatorView.swift
//  DDTipCalculator
//
//  Created by joe on 7/3/25.
//

import SwiftUI

struct TipCalculatorView: View {
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
            
            VStack {
                TitleView()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    EnterTotalView(bill: $tipModel.bill, isFocused: $isFocused)
                    
                    ChooseTipView(tipPercentage: $tipModel.tipPercentage)
                }
                
                SplitView(split: $tipModel.split, alignment: .leading)
                
                Spacer()
                
                // payment summary
                if !isFocused {
                    PaymentSummaryView(tipModel: tipModel)
                    
                    Spacer()
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

#Preview {
    TipCalculatorView()
}
