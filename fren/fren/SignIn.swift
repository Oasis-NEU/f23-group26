//
//  SignIn.swift
//  fren
//
//  Created by Maggie Lee on 10/15/23.
//

import SwiftUI

struct SignIn: View {
    @Binding var signInStatus: Bool
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var userData = UserData()
    
    var body: some View {
        VStack {
            Text("Log in")
                .font(.largeTitle)
            TextField("email", text: $email)
                .frame(width: 200, height: 60)
            TextField("password", text: $password)
                .frame(width: 200, height: 60)
            
            Button(action: signIn) {
                Text("Sign In")
            }
        }
        .textFieldStyle(.roundedBorder)
    }
    
    func signIn() {
        print("sign in")
        Auth().signIn(email: userData.email, password: userData.password)
        if (email == userData.email && password == userData.password) {
            signInStatus = true; 
        }
    }
    
    
}

#Preview {
    ContentView()
}
