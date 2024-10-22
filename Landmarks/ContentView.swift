//
//  ContentView.swift
//  Landmarks
//
//  Created by pnyossita on 23/10/2567 BE.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 270)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Nan Hin Tha Ha")
                    .font(.title)
                HStack {
                    Text("Ban Khiriwong")
                    Spacer()
                    Text("Nakhon Si Thammarat")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Nan Hin Tha Ha")
                    .font(.title2)
                Text("Nan Hin Tha Ha Waterfall originated from the mountain water source flowing down to the bottom and becoming streams. Then when it rains more and more, it makes the streams into a large pond where visitors can play in the water. The name of Nan Hin Tha Ha Waterfall was a word of mouth. However, the history mentioned above may not be true as it was just told without evidence. Traveling to the waterfall, you can start from the city about 26 km. The sign of the entrance to the village of Kiri Wong is on the right at Km. 20. The location of Tha Ha Waterfall is in Kamlon Subdistrict, Laksa District, Nakhon Si Thammarat.")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Button {
                    
                } label: {
                    HStack(alignment: .center) {
                        Image(systemName: "map")
                        Text("Open in Maps")
                            .frame(maxWidth: .infinity)
                    }
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.extraLarge)
                .buttonBorderShape(.roundedRectangle)
            }
            .padding()
            Spacer()
        }
    }
    
    private func openInMaps() {
        let coordinate = CLLocationCoordinate2D(latitude: 8.440948, longitude: 99.760156)
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate))
        mapItem.name = "Nan Hin Tha Ha"
        mapItem.openInMaps(launchOptions: nil)
    }
}

#Preview {
    ContentView()
}
