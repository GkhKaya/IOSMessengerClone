//
//  InboxView.swift
//  IOSMessengerClone
//
//  Created by Gokhan Kaya on 14.08.2023.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ScrollView {
                    ActiveNowView()
                    
                    List {
                        ForEach(0...10, id: \.self){message in
                                InboxRowView()
                        }
                    }.listStyle(PlainListStyle())
                        .frame(height: UIScreen.main.bounds.height-120)
                }.toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        HStack {
                            Image(systemName: "person.circle.fill")

                            Text("Chats")
                                .font(.title).fontWeight(.semibold)
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button{
                            print("Show message vieb")
                        }label: {
                            Image(systemName: "square.and.pencil.circle.fill")
                                .resizable()
                                .frame(width: 32,height: 32)
                                .foregroundStyle(.black,Color(.systemGray5))
                        }
                    }
                    
                }

            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}