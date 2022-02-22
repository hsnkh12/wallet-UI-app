//
//  TitleCardView.swift
//  WalletUi
//
//  Created by Hassan El Abdakkah on 05/12/2021.
//

import SwiftUI

struct TitleCardView: View{
    
    var primaryText : String
    var secondaryText : String
    var secondaryTextColor : String
    
    var body: some View{
        
        HStack{
            
            Text(primaryText)
                .font(.system(size: 18))
                .padding(.leading)
            Spacer()
            Text(secondaryText)
                .foregroundColor(Color(hex: secondaryTextColor))
                .font(.system(size: 18))
                .padding(.trailing)
            
        }.frame(width:VStackWidth,height: 80)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(8)
    }
}
