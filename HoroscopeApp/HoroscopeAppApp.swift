//
//  HoroscopeAppApp.swift
//  HoroscopeApp
//
//  Created by Atil Samancioglu on 16.08.2022.
//

import SwiftUI

@main
struct HoroscopeAppApp: App {
    var body: some Scene {
        WindowGroup {
            let _ = UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")

            ContentView()
        }
    }
}
