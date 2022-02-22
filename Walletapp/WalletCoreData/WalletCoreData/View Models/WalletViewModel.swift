//
//  WalletViewModel.swift
//  WalletCoreData
//
//  Created by Hassan El Abdakkah on 07/12/2021.
//

import Foundation
import CoreData



// Read, Update



class WalletViewModel : ObservableObject {
    
    private (set) var context : NSManagedObjectContext
    
    @Published var worth_amount = "0.0"
    @Published var creditcard_amount = "0.0"
    
    init(context : NSManagedObjectContext){
        
        self.context = context
    }
    
    
    func save(){
        
        do{
            let wallet = Wallet(context: context)
            wallet.worth_amount = Float(worth_amount) ?? 0.0
            wallet.creditcard_amount = Float(creditcard_amount) ?? 0.0
            
            try CoreDataManeger.shared.presistentStoreContainer.viewContext.save()
        }
        catch{
            print(error)
        }
        
    }
    
}
