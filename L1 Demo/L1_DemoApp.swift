//
//  L1_DemoApp.swift
//  L1 Demo
//
//  Created by Kỳ Nguyên Đại on R 5/08/19.
//

import SwiftUI

@main
struct L1_DemoApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
