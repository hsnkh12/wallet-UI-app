//
//  Wallet+CoreDataProperties.swift
//  WalletCoreData
//
//  Created by Hassan El Abdakkah on 06/12/2021.
//
//

import Foundation
import CoreData


extension Wallet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Wallet> {
        return NSFetchRequest<Wallet>(entityName: "Wallet")
    }

    @NSManaged public var worth_amount: Float
    @NSManaged public var creditcard_amount: Float

}

extension Wallet : Identifiable {

}
