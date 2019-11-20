//
//  Singer+CoreDataProperties.swift
//  DynamicallyFiltering@FetchRequestWithSwiftUICoreDataSwiftUI
//
//  Created by ramil on 20.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    
    var wrappedFirstName: String {
        firstName ?? "Unknown"
    }
    
    var wrappedLastName: String {
        lastName ?? "Unknown"
    }

}
