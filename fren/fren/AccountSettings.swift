//
//  AccountSettings.swift
//  fren
//
//  Created by Harini Avula on 10/22/23.
//

import SwiftUI
struct AccountSettings : View{
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
                Text("First Name")
                Text("Last Name")
                Text("Email")
                Text("Phone Number")
                Text("Password")
                Text("Location")
                Text("School Name")
                //TextField(text: $name)
            }
        }
    }
}

#Preview {
    AccountSettings()
}
