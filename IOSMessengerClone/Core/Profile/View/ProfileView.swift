//
//  ProfileView.swift
//  IOSMessengerClone
//
//  Created by Gokhan Kaya on 16.08.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
//            header
            VStack{
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80,height: 80)
                    .foregroundColor(Color(.systemGray4))
                Text("Mazda RX7")
                    .font(.title)
                    .fontWeight(.semibold)
            }
//            list
            
            List{
                Section{
                    ForEach(SettingOptionsViewModel.allCases){option in
                        HStack{
                            Image(systemName: option.imageName)
                            .resizable()
                            .frame(width: 24,height: 24)
                            .foregroundColor(option.imageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                Section{
                    
                    Button("Log Out"){
                        
                    }
                    
                    Button("Delete Account"){
                        
                    }
                }
            }.foregroundColor(.red)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
