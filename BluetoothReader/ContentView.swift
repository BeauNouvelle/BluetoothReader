//
//  ContentView.swift
//  BluetoothReader
//
//  Created by Beau Nouvelle on 14/2/2023.
//

import SwiftUI

struct ContentView: View {

    @StateObject var service = BluetoothService()

    var body: some View {
        VStack {
            Text(service.peripheralStatus.rawValue)
                .font(.title)
            Text("\(service.magnetValue)")
                .font(.largeTitle)
                .fontWeight(.heavy)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
