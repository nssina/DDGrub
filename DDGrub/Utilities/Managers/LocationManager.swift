//
//  LocationManager.swift
//  DDGrub
//
//  Created by Sina Rabiei on 11/8/21.
//

import Foundation

final class LocationManager: ObservableObject {
    @Published var locations: [DDGLocation] = []
    var selectedLocation: DDGLocation?
}
