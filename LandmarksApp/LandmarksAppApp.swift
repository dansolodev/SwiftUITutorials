//
//  LandmarksAppApp.swift
//  LandmarksApp
//
//  Created by Daniel Cinto on 13/06/21.
//

import SwiftUI

@main
struct LandmarksAppApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
