//
//  FilteredList.swift
//  DynamicallyFiltering@FetchRequestWithSwiftUICoreDataSwiftUI
//
//  Created by ramil on 20.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI
import CoreData

struct FilteredList: View {
    var fetchRequest: FetchRequest<Singer>
    var singers: FetchedResults<Singer> { fetchRequest.wrappedValue }
    
    var body: some View {
        List(fetchRequest.wrappedValue, id: \.self) { singer in
            Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
        }
    }
    
    init(filter: String) {
        fetchRequest = FetchRequest<Singer>(entity: Singer.entity(), sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH %@", filter))
    }
}

