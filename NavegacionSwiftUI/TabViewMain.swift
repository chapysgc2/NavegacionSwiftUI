//
//  TabViewMain.swift
//  NavegacionSwiftUI
//
//  Created by Hazel Alain on 24/11/23.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        
        TabView {
            ContentView().tabItem {
                Label("Home",systemImage: "house.fill")
            }
            vista2().tabItem {
                Label("Vista 2", systemImage: "plus")
            }
            TerceraVista().tabItem {
                Label("Camara", systemImage: "camera")
            }
            
        }
    }
}

#Preview {
    TabViewMain()
}
