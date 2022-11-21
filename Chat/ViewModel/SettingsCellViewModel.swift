//
//  SettingsCellViewModel.swift
//  Chat
//
//  Created by Richard Kelly on 21/11/2022.
//
import SwiftUI

enum SettingsCellViewModel: Int, CaseIterable {
   
    
    case account
    case notifications
    case starredMessages
    case privacy
    
    var title: String {
        switch self {
        case .account: return "Account"
        case .notifications: return "Notifications"
        case .starredMessages: return "Starred Messages"
        case .privacy: return "Privacy"
            
        }
    }
    var imageName: String {
        switch self {
        case .account: return "key.fill"
        case .notifications: return "bell.badge.fill"
        case .starredMessages: return "star.fill"
        case .privacy: return "person.fill"
            
        }
    }
    var backgroundColor: Color{
        switch self {
        case .account: return .blue
        case .notifications: return .red
        case .starredMessages: return .yellow
        case .privacy: return .indigo
            
        }
    }
    
    
    
    
    
}
