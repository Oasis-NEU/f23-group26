//
//  AccountSettings.swift
//  fren
//
//  Created by Harini Avula on 10/22/23.
//

import SwiftUI
struct AccountSettings : View{
    @State private var userData = UserData()
    
    
    var body: some View{
        Text ("Account Settings")
        .frame(width: 200, height: 210)
        .font(.largeTitle)
        .bold()
        
        HStack{
            //label column
            VStack(alignment:.leading){
                //picture
                TextField("Name", text: $userData.name)
                    .frame(width: 200, height: 30)
                TextField("Email", text: $userData.email)
                    .frame(width: 200, height: 30)
                TextField("Phone Number", text: $userData.phoneNumber)
                    .frame(width: 200, height: 30)
                TextField("Password", text: $userData.password)
                    .frame(width: 200, height: 30)
                TextField("Location", text: $userData.location)
                    .frame(width: 200, height: 30)
                TextField("School Name", text: $userData.school)
                    .frame(width: 200, height: 30)

            }
            .textFieldStyle(.roundedBorder)
            //user info column
            VStack{
                Text(userData.name)
                Text(userData.email)
                Text(userData.phoneNumber)
                Text(userData.password)
                Text(userData.location)
                Text(userData.school)
                //TextField(text: $name)
            }
        }
    }
}


#Preview {
    AccountSettings()
}
