//
//  ContentView.swift
//  WalletCoreData
//
//  Created by Hassan El Abdakkah on 06/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var viewContext
    private var walletVM : WalletViewModel
    private var debtsVM : DebtsViewModel
    private var expensesVM : ExpensesViewModel
    
    init( wVM : WalletViewModel , dVM : DebtsViewModel , eVM : ExpensesViewModel){
        
        self.walletVM = wVM
        self.debtsVM = dVM
        self.expensesVM = eVM
    }
    
    var body: some View {
        
        
        TabView{
            
            WalletScreenView(wVM: walletVM, eVM: expensesVM)
                .tabItem{
                    Label("Wallet", systemImage: "creditcard")
                }
            DebtsScreenView()
                .tabItem{
                    Label("Debts", systemImage: "creditcard.trianglebadge.exclamationmark")
                }
            StatsScreenView()
                .tabItem{
                    Label("Statistics",systemImage: "chart.xyaxis.line")
                }
            
        }
        
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
