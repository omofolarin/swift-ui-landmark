//
//  LandmarkList.swift
//  Landmark
//
//  Created by Shonibare Omofolarin Ajibade on 10/07/2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) {
                landmark in NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
          
            }.navigationTitle("Landmarks")
        }
      
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach([
            "iPhone SE (2nd generation)",
            "iPhone XS Max",
            "iPad Pro (9.7-inch)"
        ], id: \.self) {
        deviceName in LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
       
    }
}
