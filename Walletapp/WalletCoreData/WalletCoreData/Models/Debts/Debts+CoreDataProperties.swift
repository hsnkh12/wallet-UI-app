//
//  Debts+CoreDataProperties.swift
//  WalletCoreData
//
//  Created by Hassan El Abdakkah on 06/12/2021.
//
//

import Foundation
import CoreData


extension Debts {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Debts> {
        return NSFetchRequest<Debts>(entityName: "Debts")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var detail: String?
    @NSManaged public var amount: Float
    @NSManaged public var payed: Bool
    @NSManaged public var date_created: Date?

}

extension Debts : Identifiable {

}
