//
//  MainWalletView.swift
//  WalletUi
//
//  Created by Hassan El Abdakkah on 04/12/2021.
//

import SwiftUI



struct MainWalletView: View {
    
    
    @State var ShowAmountSheet : Bool = false
    
    var body: some View {
        
        
        NavigationView{
            
            
                
            VStack(spacing: 45){
                
                    WalletAmountView()
                    WalletRecentEView()
                
            }
            .navigationTitle(Text("Wallet"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    HStack{
                Button(action: {
                    ShowAmountSheet.toggle()
                },
                       label: {Image(systemName: "dollarsign.circle")})
                    .sheet(isPresented: $ShowAmountSheet) {
                    WalletAmountSheetView()
                }
                Button(action: {}, label: {Image(systemName: "plus")})
            
            })
            
            
        }
    }
}

struct MainWalletView_Previews: PreviewProvider {
    static var previews: some View {
        MainWalletView()
    }
}
