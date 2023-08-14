//
//  TextModifier.swift
//  IOSMessengerClone
//
//  Created by Gokhan Kaya on 13.08.2023.
//

import Foundation
import SwiftUI

struct TextModifier : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.footnote)
            .fontWeight(.semibold)
    }
}
