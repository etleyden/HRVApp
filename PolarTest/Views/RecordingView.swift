//
//  RecordingView.swift
//  PolarTest
//
//  Created by Ethan Leyden on 11/26/23.
//

import SwiftUI

struct RecordingView: View {
    @EnvironmentObject var bleSdkManager: PolarBleSdkManager
    @State var connectionStatusString = "Connect"
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
                        Text(connectionStatusString)
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
    // Note: Polar Heart Rate Monitors may automatically turn off and not be able to connect if they are inactive for a period of time
    // (I assume that this is to save batter)
    func connectBtDevice() {
        switch(bleSdkManager.deviceConnectionState) {
        case .disconnected(_):
            //init search and set any devices for connection
            connectionStatusString = "Connecting..."
            bleSdkManager.startDevicesSearch()
            let timer = Timer.scheduledTimer(withTimeInterval: 30.0, repeats: false) { (timer) in
                let foundDevices = bleSdkManager.deviceSearch.foundDevices
                if(foundDevices.count > 0) {
                    print("Device found!")
                    bleSdkManager.deviceConnectionState = DeviceConnectionState.disconnected(foundDevices[0].deviceId)
                    bleSdkManager.connectToDevice()
                    connectionStatusString = "Disconnect"
                } else {
                    print("No Devices Found")
                    bleSdkManager.stopDevicesSearch()
                    connectionStatusString = "Connect"
                }
            }
        
        case .connecting(_):
            return
        case .connected(let deviceId):
            bleSdkManager.disconnectFromDevice()
            bleSdkManager.deviceConnectionState = DeviceConnectionState.disconnected(deviceId)
            connectionStatusString = "Connect"
            
        }
        print(bleSdkManager.deviceConnectionState)
    }
    func beginRecording() {
        
    }
}

#Preview {
    RecordingView()
        .environmentObject(PolarBleSdkManager())
}
