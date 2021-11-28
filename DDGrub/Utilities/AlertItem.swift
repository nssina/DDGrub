//
//  AlertItem.swift
//  DDGrub
//
//  Created by Sina Rabiei on 11/5/21.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
     //MARK: - MapView Errors
    
    static let unableToGetLocations = AlertItem(title: Text("Location Error"),
                                            message: Text("Unable to retrive location at this time.\nPlease try again."),
                                                dismissButton: .default(Text("OK")))
    static let locationRestricted = AlertItem(title: Text("Location Restricted"),
                                            message: Text("Your location is restricted. This may be due to parental controls."),
                                                dismissButton: .default(Text("OK")))
    static let locationDeined = AlertItem(title: Text("Location Deined"),
                                            message: Text("DDGrub does not have permission to access your location. To change that go to your phone's Settings > DDGrub > Location."),
                                                dismissButton: .default(Text("OK")))
    static let locationDisabled = AlertItem(title: Text("Location Disabled"),
                                            message: Text("Your phone's location services are disabled. To change that go to your phone's Settings > Privacy > Location Services."),
                                                dismissButton: .default(Text("OK")))
    
    //MARK: - ProfileView Errors
   
   static let invalidProfile = AlertItem(title: Text("Invalid Profile"),
                                           message: Text("All fields are required as well as a profile photo. Your bio must be < 100 characters.\nPlease try again."),
                                               dismissButton: .default(Text("OK")))
    
    static let noUserRecord = AlertItem(title: Text("No User Record"),
                                            message: Text("You must log into iCloud on your phone in order to utilize DDGrub's Profile. Please log in on your phone's settings screen."),
                                                dismissButton: .default(Text("OK")))
    
    static let createProfileSuccess = AlertItem(title: Text("Profile created successfully."),
                                            message: Text("Your profile has successfully been created."),
                                                dismissButton: .default(Text("OK")))
    
    static let createProfileFailure = AlertItem(title: Text("Failed to create profile"),
                                            message: Text("We were unable to create your profile at this time. \nPlease try again later."),
                                                dismissButton: .default(Text("OK")))
    
    static let unableToGetProfile = AlertItem(title: Text("Unable To Retrieve Profile"),
                                            message: Text("We were unable to retrieve your profile at this time. \nPlease try again later."),
                                                dismissButton: .default(Text("OK")))
}
