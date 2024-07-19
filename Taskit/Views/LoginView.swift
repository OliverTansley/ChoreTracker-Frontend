//
//  LoginView.swift
//  Taskit
//
//  Created by Oliver tansley on 18/07/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var name: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 18){
            // Title decoration
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 0, height: 20))
                    .size(CGSize(width: 800.0, height: 350.0))
                    .foregroundColor(.blue)
                    .offset(x:-70,y:-50)
                    .rotationEffect(Angle(degrees: 15))
                Text("Chore Tracker")
                    .font(.system(size: 44,weight: .bold))
                    .foregroundColor(.white)
                    .offset(y:-50)
            }.offset(y:-80)
            
            // Username input
            VStack(alignment: .leading, spacing: 11) {
                Text("Username")
                    .font(.system(size: 24, weight: .regular))
                    .foregroundColor(.black)
                    .frame(height: 15, alignment: .leading)
                
                TextField("", text: $name)
                    .font(.system(size: 17, weight: .thin))
                    .foregroundColor(.secondary)
                    .frame(height: 44)
                    .padding(.horizontal, 12)
                    .background(Color.white)
                    .cornerRadius(4.0)
                    .foregroundColor(.gray)
                    .overlay(RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 1))
                    
            }.offset(y:-100)
            
            // Password input
            VStack(alignment: .leading, spacing: 11) {
                Text("Password")
                    .font(.system(size: 24, weight: .regular))
                    .foregroundColor(.black)
                    .frame(height: 15, alignment: .leading)
                
                SecureField("", text: $password)
                    .font(.system(size: 17, weight: .thin))
                    .foregroundColor(.primary)
                    .frame(height: 44)
                    .padding(.horizontal, 12)
                    .background(Color.white)
                    .cornerRadius(4.0)
                    .foregroundColor(.gray)
                    .overlay(RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 1))
            }.offset(y:-100)
            
            Spacer()
            
            //Buttons
            HStack {
                
                Button {
                    debugPrint("Login Button Tapped!")
                } label: {
                    Text("Login")
                        .foregroundColor(.white)
                        .font(.system(size: 18))
                        .frame(width: 170, height: 44, alignment: .center)
                }
                .background(.blue)
                .cornerRadius(4)
                .padding(.top, 36)
                
                Button {
                    debugPrint("Login Button Tapped!")
                } label: {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .font(.system(size: 18))
                        .frame(width: 170, height: 44, alignment: .center)
                }
                .background(.gray)
                .cornerRadius(4)
                .padding(.top, 36)
            }
            
            Spacer()
        }.padding(10)
        
    }
}

#Preview {
    LoginView()
}
