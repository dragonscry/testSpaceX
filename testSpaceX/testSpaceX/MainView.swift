//
//  MainView.swift
//  testSpaceX
//
//  Created by Денис Меркотун on 19.05.2025.
//

import SwiftUI

struct MainView: View {
    
    @Environment(AuthController.self) private var authController
    
    var body: some View {
        Group {
            switch authController.authState {
            case .undefined:
                ProgressView()
            case .authenticated:
                ContentView()
            case .notAuthenticated:
                AuthView()
            }
        }
        .task {
            await authController.startListeningToAuthState()
        }
    }
}

#Preview {
    MainView()
}
