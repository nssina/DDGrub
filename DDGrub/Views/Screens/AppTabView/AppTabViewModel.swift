//
//  AppTabViewModel.swift
//  DDGrub
//
//  Created by Sina Rabiei on 6/5/22.
//

import SwiftUI

extension AppTabView {
    
    final class AppTabViewModel: ObservableObject {
        @Published var isShowingOnboardView = false
        @AppStorage("hasSeenOnboardView") var hasSeenOnboardView = false {
            didSet { isShowingOnboardView = hasSeenOnboardView }
        }
        
        let kHasSeenOnboardView = "hasSeenOnboardView"
        
        
        func checkIfHasSeenOnboard() {
            if !hasSeenOnboardView { hasSeenOnboardView = true }
        }
    }
}
