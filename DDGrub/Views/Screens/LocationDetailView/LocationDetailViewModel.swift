//
//  LocationDetailViewModel.swift
//  DDGrub
//
//  Created by Sina Rabiei on 11/28/21.
//

import SwiftUI

final class LocationDetailViewModel: ObservableObject {
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var location: DDGLocation
    
    init(location: DDGLocation) {
        self.location = location
    }
    
}
