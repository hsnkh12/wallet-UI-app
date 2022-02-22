//
//  WalletRecentEView.swift
//  WalletUi
//
//  Created by Hassan El Abdakkah on 04/12/2021.
//

import SwiftUI




struct WalletRecentEView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack{
                Text("Recent")
                    .font(.title2)
                    .fontWeight(.semibold)
                    Spacer()
                Text("View all")
                    .foregroundColor(Color(.systemBlue))
            }
            VStack{
                
                ForEach(0..<4){_ in
                    
                    ListCardView(icon: "circle", primaryText: "Expense",
                                 secondaryText: "-100.00", secondaryTextColor: "#d43226",
                                 subSecondaryText: "June 16, 2021"
                    )
                    Spacer().frame(height: 5)
                }
                
            }
            
        }.frame(width:VStackWidth)
//            .background(Color(.secondarySystemBackground))
        
    }
}

struct WalletRecentEView_Previews: PreviewProvider {
    static var previews: some View {
        WalletRecentEView()
    }
}
