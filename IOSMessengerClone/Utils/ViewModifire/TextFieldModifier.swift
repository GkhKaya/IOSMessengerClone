//
//  TextFieldModifier.swift
//  IOSMessengerClone
//
//  Created by Gokhan Kaya on 13.08.2023.
//

import Foundation
import SwiftUI

struct TextFieldModifier : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.subheadline)
            .padding(.all,ProjectPaddings.All.normal.rawValue)
            .background(Color(.systemGray6))
            .cornerRadius(ProjectRadius.normal.rawValue)
            .padding(.horizontal,ProjectPaddings.Horizontal.normal.rawValue)
    }
}
