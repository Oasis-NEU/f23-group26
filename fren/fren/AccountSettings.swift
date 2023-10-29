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
                Text("First Name")
                .frame(width: 200, height: 30)
                Text("Last Name")
                .frame(width: 200, height: 30)
                Text("Email")
                .frame(width: 200, height: 30)
                Text("Phone Number")
                .frame(width: 200, height: 30)
                Text("Password")
                .frame(width: 200, height: 30)
                Text("Location")
                .frame(width: 200, height: 30)
                Text("School Name")
                .frame(width: 200, height: 30)

            }
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
