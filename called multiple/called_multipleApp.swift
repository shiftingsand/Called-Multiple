//
//  called_multipleApp.swift
//  called multiple
//
//  Created by Chris Wu on 6/30/24.
//

import SwiftUI

@main
struct called_multipleApp: App {
    @StateObject private var ourData = OurData.shared
    
    var body: some Scene {
        WindowGroup {
            TheTabView()
                .environmentObject(ourData)
        }
    }
}
