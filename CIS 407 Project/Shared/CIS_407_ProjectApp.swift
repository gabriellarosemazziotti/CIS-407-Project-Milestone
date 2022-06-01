//
//  CIS_407_ProjectApp.swift
//  Shared
//
//  Created by Gabriella Mazziotti on 4/17/22.
//

import SwiftUI

@main
struct CIS_407_ProjectApp: App {
    @StateObject var data = Data()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(data)
        }
    }
}
