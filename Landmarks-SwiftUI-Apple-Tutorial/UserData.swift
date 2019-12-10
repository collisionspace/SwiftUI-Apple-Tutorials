//
//  UserData.swift
//  Landmarks-SwiftUI-Apple-Tutorial
//
//  Created by Daniel Slone on 12/10/19.
//  Copyright © 2019 Daniel Slone. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
