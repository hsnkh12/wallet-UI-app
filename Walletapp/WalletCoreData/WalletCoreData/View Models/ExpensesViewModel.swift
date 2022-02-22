//
//  ExpensesViewModel.swift
//  WalletCoreData
//
//  Created by Hassan El Abdakkah on 07/12/2021.
//

import Foundation
import CoreData

// Create, Read, Delete


class ExpensesViewModel : ObservableObject {
    
    @Published var amount : String = "0.0"
    @Published var category : String = ""
    @Published var date : Date = Date.now
    
    private (set) var context : NSManagedObjectContext
    
    init(context : NSManagedObjectContext){
        
        self.context = context
    }
    
    func create(){
        
        do{
            
            let expense = Expense(context: context)
            expense.amount = Float(amount) ?? 0.0
            expense.category = category
            
            try CoreDataManeger.shared.presistentStoreContainer.viewContext.save()
        }
        catch{
            print(error)
        }
    }
}
