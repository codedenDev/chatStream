//
//  RegistrationView.swift
//  Chat
//
//  Created by Richard Kelly on 20/11/2022.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var fullname = ""
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 12) {
                HStack { Spacer() }
                
                Text("Get Started.")
                    .font(.largeTitle)
                    .bold()
                
                Text("Create your account.")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                
                //Custom TextField (Dry Principle)
                VStack(spacing: 32) {
                    CustomTextField(imageName: "envelope",
                                    placeholderText: "Email",
                                    isSecureField: false,
                                    text: $email)
                    CustomTextField(imageName: "person",
                                    placeholderText: "Username",
                                    isSecureField: false,
                                    text: $username)
                    CustomTextField(imageName: "person",
                                    placeholderText: "Full Name",
                                    isSecureField: false,
                                    text: $fullname)
                    CustomTextField(imageName: "lock",
                                    placeholderText: "Password",
                                    isSecureField: true,
                                    text: $password)
                    
                }
                .padding([.top,.horizontal], 32)

            }.padding(.leading)
            Button(action: {
                print("Register")
            }) {
                Text("Register")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding()
            }
            .padding(.top, 24)
            .shadow(color: .gray, radius: 10, x:0.0, y: 0.0)
           
            Spacer()
            Button(action: {
                mode.wrappedValue.dismiss()
            }, label: {
                HStack {
                    Text("Already have an account?")
                        .font(.system(size: 14))
                    
                    Text("Sign In")
                        .font(.system(size: 14, weight: .semibold))
                }
                
            }).padding(.bottom, 32)
            
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
