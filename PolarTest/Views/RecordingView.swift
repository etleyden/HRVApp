//
//  RecordingView.swift
//  PolarTest
//
//  Created by Ethan Leyden on 11/26/23.
//

import SwiftUI

struct RecordingView: View {
    @EnvironmentObject var bleSdkManager: PolarBleSdkManager
    
    var body: some View {
        VStack {
            // Action Buttons
            Spacer()
            HStack {
                Spacer()
                Button(action:connectBtDevice, label: {
                    VStack {
                        Image("logo.bluetooth.capsule.portrait.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding([.bottom], 10)
                            .foregroundColor(.blue)
                        Text("Connect")
                            .foregroundStyle(.foreground)
                    }
                })
                Spacer()
                Button(action:beginRecording, label: {
                    VStack {
                        Image(systemName: "record.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding([.bottom], 10)
                            .foregroundColor(.red)
                        Text("Record")
                            .foregroundStyle(.foreground)
                    }
                })
                Spacer()
            }
            .padding([.bottom], 0.5)
            // Statistic
            VStack {
                Text("87")
                    .font(.custom("Big", size: 150))
                Text("Heart Rate")
            }
            Spacer()
        }
    }
    func connectBtDevice() {
        
    }
    func beginRecording() {
        
    }
}

#Preview {
    RecordingView()
}
