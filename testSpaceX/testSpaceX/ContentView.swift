//
//  ContentView.swift
//  testSpaceX
//
//  Created by Денис Меркотун on 19.05.2025.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(AuthController.self) private var authController
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("HELLO!")
            Button("Sign out") {
                signOut()
            }
        }
    }
    
    func signOut() {
        do {
            try authController.signOut()
        } catch {
            print(error.localizedDescription)
        }
    }
    
}
