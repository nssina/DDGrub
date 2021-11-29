//
//  LocationListView.swift
//  DDGrub
//
//  Created by Sina Rabiei on 9/6/21.
//

import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject private var locationManager: LocationManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locationManager.locations) { location in
                    NavigationLink(destination: LocationDetailView(viewModel: LocationDetailViewModel(location: location))) {
                        LocationCell(location: location)
                    }
                }
            }
            .navigationTitle("Grub Spots")
            .onAppear {
                CloudKitManager.shared.getCheckedInProfilesDictionary { result in
                    switch result {
                    case .success(let checkedInProfiles):
                        break
                    case .failure(_):
                        break
                    }
                }
            }
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
