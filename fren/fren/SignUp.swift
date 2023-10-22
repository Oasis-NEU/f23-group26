//
//  SignUp.swift
//  fren
//
//  Created by Harini Avula on 10/22/23.
//

import SwiftUI
struct SignUp: View {
    @State private var email: String = ""
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var phoneNumber: String = "" //may need to be a number/int
    @State private var location: String = ""
    @State private var school: String = ""

    var body: some View {
        VStack {
            Text("The beginning of a new journey starts now...")
                .frame(width: 200, height: 210)
                .font(.largeTitle)
                .bold()
            TextField("Full Name", text: $name)
                .frame(width: 200, height: 60)
            TextField("Email", text: $email)
                .frame(width: 200, height: 60)
            TextField("Password", text: $password)
                .frame(width: 200, height: 60)
            TextField("Phone Number", text: $phoneNumber)
                .frame(width: 200, height: 60)
            TextField("Location (city, state)", text: $location)
                .frame(width: 200, height: 60)
            TextField("School Name (optional)", text: $school)
                .frame(width: 200, height: 60)
            Button(action: signUp) {
                Text("Sign Up")
            }
        }
    }
    func signUp() {
        print("sign up")
        name = ""
        email = ""
        password = ""
        phoneNumber = ""
        location = ""
        school = ""
    }
}

#Preview {
    SignUp()
}


