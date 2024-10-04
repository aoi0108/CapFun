//
//  ContentView.swift
//  CapFUn
//
//  Created by 平松蒼惟 on 2024/10/01.
//

import SwiftUI

struct ContentView: View {
    @State var userText = "Hello"
    @State var capMode = 1
    
    var body: some View {
        VStack{
            
            Spacer()
            
            if capMode == 1{
                Text(userText.uppercased())
                    .font(.largeTitle)
            }
            
            if capMode == 2{
                Text(userText.capitalized)
                    .font(.largeTitle)
            }
            
            if capMode == 3{
                Text(userText.lowercased())
                    .font(.largeTitle)
            }
            
            Spacer()
            
            Button(action:{
            
            
                if capMode == 1{
                    UIPasteboard.general.string = userText.uppercased()
                }
                
                if capMode == 2{
                    UIPasteboard.general.string = userText.capitalized
                }
                
                if capMode == 3{
                    UIPasteboard.general.string = userText.lowercased()
                }
            }){
                CustomButtonView(title: "Copy", color: .orange)
            }
            
            
            HStack{
                Button(action: {
                    capMode = 1
                }){
                    CustomButtonView(title: "ALL CAPS", color: .red)
                    
                }
                
                Button(action: {
                   capMode = 2
                }){
                    CustomButtonView(title: "First Letter", color: .green)
                }
                
                Button(action: {
                    capMode = 3
                }){
                    CustomButtonView(title: "lowercase", color: .blue)
                }
            }
           
            
            TextField("Enter Text Here: ", text: $userText )
                .padding(.vertical)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
