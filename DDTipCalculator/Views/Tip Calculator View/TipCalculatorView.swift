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
                // TODO: title view
                Text("Title View")
                
                Spacer()
                
                VStack(alignment: .leading) {
                    EnterTotalView(bill: $tipModel.bill, isFocused: $isFocused)
                    
                    ChooseTipView(tipPercentage: $tipModel.tipPercentage)
                }
                // TODO: split view
                Text("Split View")
                
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
            // TODO: implement tap outside of text field
            print("implement tap outside of text field")
        }
    }
}

#Preview {
    TipCalculatorView()
}
