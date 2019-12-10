//
//  LandmarkList.swift
//  Landmarks-SwiftUI-Apple-Tutorial
//
//  Created by Daniel Slone on 12/10/19.
//  Copyright © 2019 Daniel Slone. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
         NavigationView {
           List {
               Toggle(isOn: $userData.showFavoritesOnly) {
                   Text("Show Favorites Only")
               }
               
               ForEach(userData.landmarks) { landmark in
                   if !self.userData.showFavoritesOnly || landmark.isFavorite {
                       NavigationLink(
                           destination: LandmarkDetail(landmark: landmark)
                               .environmentObject(self.userData)
                       ) {
                           LandmarkRow(landmark: landmark)
                       }
                   }
               }
           }
           .navigationBarTitle(Text("Landmarks"))
       }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        .environmentObject(UserData())
    }
}
