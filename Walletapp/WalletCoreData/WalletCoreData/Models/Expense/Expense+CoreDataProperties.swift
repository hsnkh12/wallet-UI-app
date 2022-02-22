//
//  Expense+CoreDataProperties.swift
//  WalletCoreData
//
//  Created by Hassan El Abdakkah on 06/12/2021.
//
//

import Foundation
import CoreData


extension Expense {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var amount: Float
    @NSManaged public var date_created: Date?
    @NSManaged public var category: String

}

extension Expense : Identifiable {

}
