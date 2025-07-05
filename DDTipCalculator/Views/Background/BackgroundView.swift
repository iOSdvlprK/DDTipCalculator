//
//  BackgroundView.swift
//  DDTipCalculator
//
//  Created by joe on 7/5/25.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Color
                .white
                .opacity(0.9)
                .ignoresSafeArea()
            
            SinePathView()
        }
    }
}

#Preview {
    BackgroundView()
}
