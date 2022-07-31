//
//  LandmarkList.swift
//  Landmark
//
//  Created by Shonibare Omofolarin Ajibade on 10/07/2022.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorite only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
              
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
//            "iPad Pro (9.7-inch)"
        ], id: \.self) {
            deviceName in LandmarkList().environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
       
    }
}
