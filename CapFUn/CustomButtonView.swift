//
//  CustomButtonView.swift
//  CapFUn
//
//  Created by 平松蒼惟 on 2024/10/04.
//

import SwiftUI

struct CustomButtonView: View {
    
    var title: String
    var color: Color
    
    
    var body: some View {
        Text(title)
            .font(.body)
            .padding(12)
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
    }
}

#Preview {
    CustomButtonView(title: "Tap me!", color: .blue)
}
