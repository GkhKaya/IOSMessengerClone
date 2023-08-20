//
//  SettingOptionViewModel.swift
//  IOSMessengerClone
//
//  Created by Gokhan Kaya on 20.08.2023.
//

import Foundation
import SwiftUI
enum SettingOptionsViewModel: Int, CaseIterable, Identifiable{
    case darkMode
    case activeStatus
    case accesibility
    case privacy
    case notification
    case test
    
    var title:String{
        switch self{
        case .darkMode:
            return "Dark Mode"
        case .activeStatus:
            return "Active sTATUS"
        case .accesibility:
            return "Accesibility"
        case .privacy:
            return "Privacy"
        case .notification:
           return  "Notifi ation"
        case .test:
            return "Test"
        }
    }
    
    var imageName:String{
        switch self{
        case .darkMode:
            return "moon.circle.fill"
        case .activeStatus:
            return "message.badge.circle.fill"
        case .accesibility:
            return "person.circle.fill"
        case .privacy:
            return "lock.circle.fill"
        case .notification:
           return  "bell.circle.fill"
        case .test:
            return "person.circle.fill"
        }
    }
    
    var imageBackgroundColor:Color{
        switch self{
        case .darkMode:
            return Color.black
        case .activeStatus:
            return Color(.systemGreen)
        case .accesibility:
            return Color.black
        case .privacy:
            return Color(.systemBlue)
        case .notification:
            return  Color(.systemPurple)
        case .test:
            return Color(.systemPink)
        }
    }
    
    var id: Int {return self.rawValue}
}
