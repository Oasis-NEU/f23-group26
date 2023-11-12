//
//  CreateEvent.swift
//  fren
//
//  Created by Harini Avula on 11/12/23.
//

import SwiftUI

struct CreateEvent : View{
    @State private var userData = UserData()
    
    var body: some View{
        Text ("Create an Event")
            .frame(width: 200, height: 210)
            .font(.largeTitle)
            .bold()
        
        HStack{
            //label column
            VStack(alignment:.leading){
                //picture
                TextField("Enter Event Name", text: $userData.name)
                    .frame(width: 200, height: 30)
                TextField("Enter Location", text: $userData.location)
                    .frame(width: 200, height: 30)
                TextField("Enter Phone Number", text: $userData.phoneNumber)
                    .frame(width: 200, height: 30)
                TextField("Enter School Name", text: $userData.school)
                    .frame(width: 200, height: 30)
                TextField("Enter Class Name", text: $userData.className)
                    .frame(width: 200, height: 30)
                //need to create variable in SignUp
                TextField("Description", text: $userData.description)
                    .frame(width: 200, height: 30)
                
            }
            .textFieldStyle(.roundedBorder)
            //user info column
            VStack{
                Text(userData.name)
                Text(userData.location)
                Text(userData.phoneNumber)
                Text(userData.school)
                Text(userData.location)
                Text(userData.className)
                Text(userData.description)
                Button(action: createEventButton) {
                    Text("Create")
                }
                
            }
        }
    }
    func createEventButton(){
        
    }
    
}


#Preview {
    CreateEvent()
}

