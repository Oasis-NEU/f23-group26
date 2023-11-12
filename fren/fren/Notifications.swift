//
//  Notifications.swift
//  fren
//
//  Created by Harini Avula on 11/12/23.
//

import SwiftUI

struct Notifications: View {
    @State private var userData = UserData()
    
    var body: some View {
        VStack {
            Text("Notifications")
                .font(.largeTitle)
            
            Button(action: backToHome) {
                Text("Home")
            }
        }
        .textFieldStyle(.roundedBorder)
    }
    func backToHome(){
       //goes back to home page
    }
}

#Preview {
    Notifications()
}
    
