//
//  ListCardView.swift
//  WalletUi
//
//  Created by Hassan El Abdakkah on 05/12/2021.
//

import SwiftUI

struct ListCardView: View{
    
    var icon : String
    var primaryText : String
    var secondaryText : String
    var secondaryTextColor : String
    var subSecondaryText : String

    var body: some View{
        
        HStack{
            
            HStack(spacing: 9){
                Image(systemName: icon).font(.system(size: 33))
                Text(primaryText)
            }
            
            Spacer()
            
            VStack(alignment: .trailing,spacing: 7){
                Text(secondaryText).foregroundColor(Color(hex:secondaryTextColor))
                Text(subSecondaryText).foregroundColor(Color(.secondaryLabel))
            }
        }.frame(width:VStackWidth,height: 72)
//            .background(Color(.systemGray))
    }
}



