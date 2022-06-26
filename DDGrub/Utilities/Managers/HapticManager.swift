//
//  HapticManager.swift
//  DDGrub
//
//  Created by Sina Rabiei on 6/26/22.
//

import UIKit

struct HapticManager {
    
    static func playSuccess() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}
