//
//  WalletCoreDataApp.swift
//  WalletCoreData
//
//  Created by Hassan El Abdakkah on 06/12/2021.
//

import SwiftUI

@main
struct WalletCoreDataApp: App {
    var body: some Scene {
        WindowGroup {
            
            let viewContext = CoreDataManeger.shared.presistentStoreContainer.viewContext
            let wVM = WalletViewModel(context: viewContext)
            let dVM = DebtsViewModel(context: viewContext)
            let eVM = ExpensesViewModel(context: viewContext)
            
            ContentView(wVM: wVM, dVM: dVM, eVM: eVM)
                .environment(\.managedObjectContext, viewContext)
        }
    }
}
