//
//  LocalKeys.swift
//  IOSMessengerClone
//
//  Created by Gokhan Kaya on 13.08.2023.
//

import SwiftUI

struct LocalKeys {
    enum Auth: String {
        case enterYourEmail = "enterYourEmail"
        case enterYourPassword = "enterYourPassword"
        case enterYourFullname = "enterYourFullname"
        case forgotPassword = "forgotPassword"
        case or = "or"
        case continueWithFacebook = "continueWithFacebook"
        case dontHaveAnAccount = "dontHaveAnAccount"
        case alreadyHaveAnAccount = "alreadyHaveAnAccount"
        case signUp = "signUp"
        case login = "login"
        case signIn = "signIn"
    }

    enum Inbox: String {
        case chats = "chats"
    }

    enum NewMessage: String {
        case contacts = "contacts"
        case to = "to"
        case newMessage = "newMessage"
        case cancel = "cancel"
    }
}




extension String {
    /// It localize any string from Localizable string
    /// - Returns: localized value

    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
