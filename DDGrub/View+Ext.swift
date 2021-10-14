//
//  View+Ext.swift
//  DDGrub
//
//  Created by Sina Rabiei on 10/14/21.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
