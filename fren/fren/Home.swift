//
//  Home.swift
//  fren
//
//  Created by Maggie Lee on 10/15/23.
//

import SwiftUI

struct Home: View {
    @Binding var signInStatus: Bool
    @State private var userData = UserData()
    /*@State private var email: String = ""
    @State private var password: String = ""*/
    var body: some View {
        VStack {
            Text("In Your Area")
                .font(.largeTitle)
                .bold()
            
        }
        .textFieldStyle(.roundedBorder)
    }
    
    func signIn() {
        print("sign in")
        userData = UserData()
        signInStatus = true
    }
    
    
}

#Preview {
    ContentView()
}
