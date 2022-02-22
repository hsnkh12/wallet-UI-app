//
//  DebtsViewModel.swift
//  WalletCoreData
//
//  Created by Hassan El Abdakkah on 07/12/2021.
//

import Foundation
import CoreData


// Create, Read, Update, Delete


class DebtsViewModel : ObservableObject {
    
    private (set) var context : NSManagedObjectContext
    
    init(context : NSManagedObjectContext){
        
        self.context = context
    }
}
