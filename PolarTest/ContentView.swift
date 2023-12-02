//
//  ContentView.swift
//  PolarTest
//
//  Created by Ethan Leyden on 11/26/23.
//

import SwiftUI
import PolarBleSdk

struct ContentView: View {
    @EnvironmentObject private var bleSdkManager: PolarBleSdkManager
    @State private var selection: Tab = .record
    
    enum Tab {
        case record
        case data
        case settings
    }
    var body: some View {
        TabView(selection: $selection) {
            RecordingView()
                .environmentObject(bleSdkManager)
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
