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
    
    static var chipotle: CKRecord {
            let record                          = CKRecord(recordType: RecordType.location, recordID: CKRecord.ID(recordName: "BD731330-6FAF-A3DE-2592-677F9A62BBCA"))
            record[DDGLocation.kName]           = "Chipotle"
            record[DDGLocation.kAddress]        = "1 S Market St Ste 40"
            record[DDGLocation.kDescription]    = "Our local San Jose One South Market Chipotle Mexican Grill is cultivating a better world by serving responsibly sourced, classically-cooked, real food."
            record[DDGLocation.kWebsiteURL]     = "https://locations.chipotle.com/ca/san-jose/1-s-market-st"
            record[DDGLocation.kLocation]       = CLLocation(latitude: 37.334967, longitude: -121.892566)
            record[DDGLocation.kPhoneNumber]    = "408-938-0919"
            
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
