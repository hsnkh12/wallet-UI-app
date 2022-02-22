//
//  MainDebtsView.swift
//  WalletUi
//
//  Created by Hassan El Abdakkah on 04/12/2021.
//

import SwiftUI





struct MainDebtsView: View {
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                Spacer()
                
                TitleCardView(primaryText: "Total debts", secondaryText: "100.00",secondaryTextColor: "#d43226")
                
                ScrollView{
                    
                    ForEach(0..<5){_ in

                        ListCardView(icon: "", primaryText: "Debt detail",
                                     secondaryText: "+100.00", secondaryTextColor: "#4caf50",
                                     subSecondaryText: "June 16, 2021"
                        )
                        Spacer().frame(height: 5)
                    }
                    
                }
                
            }
            .navigationTitle(Text("Debts"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    Button(action: {}, label: {Image(systemName: "plus")})
            )
        }
        
    }
}

struct MainDebtsView_Previews: PreviewProvider {
    static var previews: some View {
        MainDebtsView()
    }
}
