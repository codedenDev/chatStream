//
//  CustomTextField.swift
//  Chat
//
//  Created by Richard Kelly on 20/11/2022.
//


import SwiftUI


struct CustomTextField: View {
    let imageName: String
    let placeholderText: String
    let isSecureField: Bool
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                if isSecureField {
                    SecureField(placeholderText,text: $text)
                }else {
                    TextField(placeholderText, text: $text)
                }
            }
            Divider()
                .backgroundStyle(Color(.darkGray))
        }
    }
}
