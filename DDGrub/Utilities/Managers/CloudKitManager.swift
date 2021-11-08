//
//  CloudKitManager.swift
//  DDGrub
//
//  Created by Sina Rabiei on 11/5/21.
//

import CloudKit

struct CloudKitManager {
    
    static func getLocations(complited: @escaping (Result<[DDGLocation], Error>) -> Void) {
        let sortDescriptor = NSSortDescriptor(key: DDGLocation.kName, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        query.sortDescriptors = [sortDescriptor]
        
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            guard error == nil else {
                complited(.failure(error!))
                return
            }
            
            guard let records = records else { return }
            
            let locations = records.map { $0.convertToDDGLocation() }
            
            complited(.success(locations))
        }
    }
}
