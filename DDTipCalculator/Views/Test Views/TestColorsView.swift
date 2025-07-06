//
//  TestColorsView.swift
//  DDTipCalculator
//
//  Created by joe on 7/6/25.
//

import SwiftUI

struct TestColorsView: View {
    // TODO: use custom colors
    let colors: [Color] = [.myRed, .myBlack, .myGray, .myWhite, .myDarkGreen, .myLightGreen]
    let dim = 50.0
    
    var body: some View {
        VStack {
            ForEach(colors, id: \.self) { color in
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .frame(width: dim, height: dim)
            }
        }
    }
}

#Preview {
    TestColorsView()
}
