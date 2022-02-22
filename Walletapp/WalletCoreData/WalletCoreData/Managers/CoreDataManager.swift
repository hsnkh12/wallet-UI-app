//
//  CoreDataManager.swift
//  WalletCoreData
//
//  Created by Hassan El Abdakkah on 06/12/2021.
//

import Foundation
import CoreData



class CoreDataManeger {
    
    let presistentStoreContainer: NSPersistentContainer
    static let shared = CoreDataManeger()
    
    
    private init(){
        
        presistentStoreContainer = NSPersistentContainer(name: "Model")
        presistentStoreContainer.loadPersistentStores{ desc, err in
            
            if let err = err {
                fatalError("Unable to initilize Core Data. \(err)")
            }
        }
    }
    
}
