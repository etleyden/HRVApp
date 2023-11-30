//
//  ContentView.swift
//  PolarTest
//
//  Created by Ethan Leyden on 11/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .record
    
    enum Tab {
        case record
        case data
        case settings
    }
    var body: some View {
        TabView(selection: $selection) {
            RecordingView()
                .tabItem {
                    Label("Record", systemImage: "waveform.circle")
                }
            DataView()
                .tabItem {
                    Label("Data", systemImage: "doc")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    ContentView().environment(\.colorScheme, .dark)
}
