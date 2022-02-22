//
//  ContentView.swift
//  WalletUi
//
//  Created by Hassan El Abdakkah on 04/12/2021.
//

import SwiftUI


public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

public var VStackWidth = screenWidth-45


struct ContentView: View {
    
    var body: some View {
        
        
        TabView{
            
            MainWalletView()
                .tabItem{
                    Label("Wallet", systemImage: "creditcard")
                }
            MainDebtsView()
                .tabItem{
                    Label("Debts", systemImage: "creditcard.trianglebadge.exclamationmark")
                }
            MainStatsView()
                .tabItem{
                    Label("Statistics",systemImage: "chart.xyaxis.line")
                }
            MainSettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
