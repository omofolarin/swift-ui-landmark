//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Shonibare Omofolarin Ajibade on 10/07/2022.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
