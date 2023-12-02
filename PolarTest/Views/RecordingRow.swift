//
//  RecordingListItem.swift
//  PolarTest
//
//  Created by Ethan Leyden on 11/26/23.
//

import SwiftUI

struct RecordingRow: View {
    var recording: Recording
    
    var body: some View {
        HStack {
            Spacer()
            //category image
            
            Image("hikingSymbol")
                .imageScale(.large)
                .foregroundColor(.green)
            Spacer()
            VStack (alignment: .leading) {
                //name of recording
                Text(recording.name)
                    .bold()
                    
                HStack { // Tags go here
                    Text(recording.category)
                        .padding([.leading, .trailing], 5)
                        .background(in: Capsule())
                        .backgroundStyle(.green)
                        .foregroundColor(.white)
                }
            }
            Spacer()
            HStack {
                VStack { //for each stat, up to 3
                    Text("78")
                        .font(.title3)
                    Text("low")
                    
                }
                VStack {
                    Text("125")
                        .font(.title3)
                    Text("high")
                    
                }
                VStack {
                    Text("110")
                        .font(.title3)
                    Text("avg")
                    
                }
            }
            Spacer()
        }
    }
}

#Preview {
    RecordingRow(recording: recordings[0])
}
