//
//  ContentView.swift
//  fren
//
//  Created by Lea Kwok on 10/15/23.
//
import SwiftUI

struct ContentView: View {
    @State private var signInStatus = false
    
    var body: some View {
        if (signInStatus) {
            Home(signInStatus: $signInStatus)
        } else {
            SignIn(signInStatus: $signInStatus)
        }
    }
    
    
    
}

#Preview {
    ContentView()
}
