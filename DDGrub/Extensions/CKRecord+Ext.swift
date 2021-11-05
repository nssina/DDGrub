//
//  CKRecord+Ext.swift
//  DDGrub
//
//  Created by Sina Rabiei on 11/5/21.
//

import CloudKit

extension CKRecord {
    func convertToDDGLocation() -> DDGLocation { DDGLocation(record: self) }
    func convertToDDGProfile() -> DDGProfile { DDGProfile(record: self) }
    
}
