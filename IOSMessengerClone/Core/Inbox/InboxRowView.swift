//
//  InboxRowView.swift
//  IOSMessengerClone
//
//  Created by Gokhan Kaya on 14.08.2023.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top,spacing: 12){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64,height: 64)
                .foregroundColor(Color(.systemGray4))
            
            VStack(alignment: .leading,spacing: 4){
                Text("Heath Ledger")
                    .modifier(TextModifier())
                
                Text("Some Test Message For Now, Lorem Ipsum Lorem Ipsum lOREM IPSUM IPSUM IPSUM")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width-100,alignment: .leading)
            }
            
            HStack {
                Text("Yesterday")
                
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }.frame(height: 72)
            .padding(.horizontal)
    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}
