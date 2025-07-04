//
//  MainView.swift
//  DDTipCalculator
//
//  Created by joe on 7/2/25.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var body: some View {
        VStack {
            if isPortraitPhone {
//                Text("Tip Calculator View (portrait)")
            } else {
//                Text("Tip Calculator View (landscape)")
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
