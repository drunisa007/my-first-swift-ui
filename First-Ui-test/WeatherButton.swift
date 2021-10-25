//
//  WeatherButton.swift
//  First-Ui-test
//
//  Created by Drunisa on 10/25/21.
//

import Foundation
import SwiftUI


struct WeatherButtonView: View {
    
    var  title : String
    
    @Binding var isDark: Bool
    
    var body: some View {
        Button {
            isDark.toggle()
        } label: {
            Text("\(title)")
                .frame(width: 280, height: 45, alignment: .center)
                .background(Color.white)
                .cornerRadius(5.0)
                .font(.system(size: 20, weight: .medium, design: .default))
        }
    }
}
