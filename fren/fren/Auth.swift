//
//  Auth.swift
//  fren
//
//  Created by Lea Kwok on 11/5/23.
//

import Foundation

import Supabase

class Auth{
    
    let client = SupabaseClient(supabaseURL: URL(string: "https://ewbjkdmghddbawjbxpvh.supabase.co")!, supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV3YmprZG1naGRkYmF3amJ4cHZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkyMDc1MTIsImV4cCI6MjAxNDc4MzUxMn0.34t_JLes9yjFyBAqkIiWMz-SyX4vqvLGS_6iPb5FsIM")

    
    func signUp(email : String, password : String, full_name : String, phone: Int8, location : String, school : String?){
        Task {
          do {
              try await client.auth.signUp(email: email, password: password)
              let session = try await client.auth.session
              print("### Session Info: \(session)")
              
              
              let city = UserData(name: full_name, email: email, password: password, phoneNumber: phone)
              try await client.database
                    .from("user_data")
                    .insert(city)
                    .execute()
          } catch {
              print("### Sign Up Error: \(error)")
          }
        }
    }
    
    
    func signIn(email : String, password : String){
        Task {
          do {
              try await client.auth.signIn(email: email, password: password)
              let session = try await client.auth.session
              print("### Session Info: \(session)")
          } catch {
              print("### Sign Up Error: \(error)")
          }
        }
    }
    
}
