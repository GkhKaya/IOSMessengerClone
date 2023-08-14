//
//  NewMessageView.swift
//  IOSMessengerClone
//
//  Created by Gokhan Kaya on 14.08.2023.
//

import SwiftUI

struct NewMessageView: View {
    @State private var searchText  = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            ScrollView{
                TextField(LocalKeys.NewMessage.to.rawValue.locale(), text: $searchText)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                
                Text(LocalKeys.NewMessage.contacts.rawValue.locale())
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0...10, id: \.self){user in
                    VStack {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 32,height: 32)
                                .foregroundColor(Color(.systemGray4))
                            
                            Text("Toyota Supra")
                                .modifier(TextModifier())
                            Spacer()
                        }.padding(.leading)
                        Divider()
                    }.padding(.leading,40)
                }
            }
            .navigationTitle(LocalKeys.NewMessage.newMessage.rawValue.locale())
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(LocalKeys.NewMessage.cancel.rawValue.locale()){
                        dismiss()
                    }.foregroundColor(.black)
                }
        }
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NewMessageView()
        }
    }
}
