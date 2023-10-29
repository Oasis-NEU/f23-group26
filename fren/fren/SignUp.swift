//
//  SignUp.swift
//  fren
//
//  Created by Harini Avula on 10/22/23.
//

import SwiftUI


struct UserData {
    var name: String = ""
    var email: String = ""
    var password: String = ""
    var phoneNumber: String = ""
    var location: String = ""
    var school: String = ""
}



struct SignUp: View {
    @State private var userData = UserData()
    /*
    @State private var email: String = ""
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var phoneNumber: String = "" //may need to be a number/int
    @State private var location: String = ""
    @State private var school: String = ""
     */

    var body: some View {
        VStack {
            Text("The beginning of a new journey starts now...")
                .frame(width: 200, height: 210)
                .font(.largeTitle)
                .bold()
            TextField("Full Name", text: $userData.name)
                .frame(width: 200, height: 60)
            TextField("Email", text: $userData.email)
                .frame(width: 200, height: 60)
            TextField("Password", text: $userData.password)
                .frame(width: 200, height: 60)
            TextField("Phone Number", text: $userData.phoneNumber)
                .frame(width: 200, height: 60)
            TextField("Location (city, state)", text: $userData.location)
                .frame(width: 200, height: 60)
            TextField("School Name (optional)", text: $userData.school)
                .frame(width: 200, height: 60)
            Button(action: signUp) {
                Text("Sign Up")
            }
        }
    }
    func signUp() {
        print("sign up")
        /*
        name = ""
        email = ""
        password = ""
        phoneNumber = ""
        location = ""
        school = ""
         */
        userData = UserData()
    }
}

#Preview {
    SignUp()
}


