//
//  LandmarkList.swift
//  LandmarksApp
//
//  Created by Daniel Cinto on 29/06/21.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
