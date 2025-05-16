//
//  LandmarkList.swift
//  Landmarks
//
//  Created by A S on 2025/05/17.
//

import Foundation
import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle(Text("Landmarks"))
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
