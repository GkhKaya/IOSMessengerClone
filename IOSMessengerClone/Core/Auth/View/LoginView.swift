//
//  LoginView.swift
//  IOSMessengerClone
//
//  Created by Gokhan Kaya on 13.08.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationStack{
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
                            
                        
                        SecureField(LocalKeys.Auth.enterYourPassword.rawValue.locale(),text: $password)
                            .modifier(TextFieldModifier())

                    }
                    
    //                forgot password
                    Button{
                        print("Forgot pasworod")
                    }label: {
                        Text(LocalKeys.Auth.forgotPassword.rawValue.locale())
                            .modifier(TextModifier())
                            .padding(.top,ProjectPaddings.Top.normal.rawValue)
                            .padding(.trailing,ProjectPaddings.Trailing.normal.rawValue)
                    }
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    
    //                login button
                    Button{
                        print("Login")
                    }label: {
                        Text(LocalKeys.Auth.login.rawValue.locale())
                            .modifier(TextModifier())
                            .foregroundColor(.white)
                            .frame(width: geometry.dw(width: 0.90),height: geometry.dh(height: 0.05))
                            .background(Color(.systemBlue))
                            .cornerRadius(ProjectRadius.normal.rawValue)
                    }.padding(.vertical)
                    
    //                facebook login
                    HStack{
                        Rectangle()
                            .frame(width: geometry.dw(width: 0.4), height: geometry.dh(height: 0.0006))
                        Text(LocalKeys.Auth.or.rawValue.locale())
                            .modifier(TextModifier())
                        Rectangle()
                            .frame(width: geometry.dw(width: 0.4), height: geometry.dh(height: 0.0006))
                    }.foregroundColor(.gray)
                    
                    HStack{
                        Image(ProjectImages.General.facebookLogo.rawValue)
                            .resizable()
                            .frame(width: geometry.dw(width: 0.06),height: geometry.dh(height: 0.03))
                        Text(LocalKeys.Auth.continueWithFacebook.rawValue.locale())
                            .modifier(TextModifier())
                            .foregroundColor(Color(.systemBlue))
                    }
                    .padding(.top,ProjectPaddings.Top.normal.rawValue)
                    Spacer()
    //                sign up
                    
                    Divider()
                    
                    NavigationLink{
                        RegisterView()
                            .navigationBarBackButtonHidden(true)
                    }label: {
                        HStack(spacing: 3){
                            Text(LocalKeys.Auth.dontHaveAnAccount.rawValue.locale())
                            
                            Text(LocalKeys.Auth.signUp.rawValue.locale())
                                .fontWeight(.semibold)
                        }.font(.footnote)
                    }.padding(.vertical)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
