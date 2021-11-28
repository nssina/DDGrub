//
//  MockData.swift
//  DDGrub
//
//  Created by Sina Rabiei on 11/2/21.
//

import Foundation
import CloudKit

struct MockData {
    
    static var location: CKRecord {
        let record                       = CKRecord(recordType: RecordType.location)
        record[DDGLocation.kName]        = "Sina's Room"
        record[DDGLocation.kAddress]     = "123 Main Street"
        record[DDGLocation.kDescription] = "This is a test description."
        record[DDGLocation.kWebsiteURL]  = "https://sinarabiei.com"
        record[DDGLocation.kLocation]    = CLLocation(latitude: 37.331516, longitude: -121.891054)
        record[DDGLocation.kPhoneNumber] = "+989123456789"
        
        return record
    }
    
    static var profile: CKRecord {
        let record                      = CKRecord(recordType: RecordType.profile)
        record[DDGProfile.kFirstName]   = "Sina"
        record[DDGProfile.kLastName]    = "Rabiei"
        record[DDGProfile.kCompanyName] = "NSDevelop"
        record[DDGProfile.kBio]         = "This is my bio, I hope it's not too long I can't check character count."
        
        return record
    }
}
