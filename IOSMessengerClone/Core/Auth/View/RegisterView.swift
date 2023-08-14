//
//  RegisterView.swift
//  IOSMessengerClone
//
//  Created by Gokhan Kaya on 14.08.2023.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        GeometryReader{geometry in
            VStack{
                Spacer()
                //                logo
                Image(ProjectImages.General.messengerLogo.rawValue)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.dw(width: 0.40),height: geometry.dh(height: 0.20))
                
                    .padding()
                //                text field
                VStack(spacing: 16){
                    TextField(LocalKeys.Auth.enterYourEmail.rawValue.locale(),text:$email)
                        .modifier(TextFieldModifier())
                    
                    TextField(LocalKeys.Auth.enterYourFullname.rawValue.locale(),text:$fullname)
                        .modifier(TextFieldModifier())
                    
                    
                    SecureField(LocalKeys.Auth.enterYourPassword.rawValue.locale(),text: $password)
                        .modifier(TextFieldModifier())
                    
                }
                
                Button{
                    print("Login")
                }label: {
                    Text(LocalKeys.Auth.signUp.rawValue.locale())
                        .modifier(TextModifier())
                        .foregroundColor(.white)
                        .frame(width: geometry.dw(width: 0.90),height: geometry.dh(height: 0.05))
                        .background(Color(.systemBlue))
                        .cornerRadius(ProjectRadius.normal.rawValue)
                }.padding(.vertical)

                Spacer()
                
                Divider()
                
                Button{
                    dismiss()
                }label: {
                    HStack(spacing: 3){
                        Text(LocalKeys.Auth.alreadyHaveAnAccount.rawValue.locale())
                        
                        Text(LocalKeys.Auth.signIn.rawValue.locale())
                            .fontWeight(.semibold)
                    }.font(.footnote)
                }.padding(.vertical)
                

            }

            
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
