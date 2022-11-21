//
//  SettingsHeaderView.swift
//  Chat
//
//  Created by Richard Kelly on 21/11/2022.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        
            HStack {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .frame(width:64,height:64)
                    .clipShape(Circle())
                    .padding(.leading)
                VStack (alignment: .leading, spacing: 4){
                    Text("Joe Blow")
                        .font(.system(size: 18))
                    
                    Text("Available")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                }
                Spacer()
            }
            .frame(height:80)
            .background(Color.white)
        }
    }

