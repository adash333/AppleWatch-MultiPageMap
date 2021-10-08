//
//  ContentView.swift
//  MultiPagesAppleWatch WatchKit Extension
//
//  Created by a on 2021/10/06.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Go To Map")
                }
                .navigationTitle("Map")
            }
        }
    }
}

struct SecondView: View {
    
    @State private var region =
        MKCoordinateRegion(
            center: .init(latitude: 35.710263046992736, longitude: 139.81067894034084),
            latitudinalMeters: 300,
            longitudinalMeters: 300
        )

    var body: some View {
        Map(coordinateRegion: $region)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

