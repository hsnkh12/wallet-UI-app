//
//  MostUsedView.swift
//  WalletUi
//
//  Created by Hassan El Abdakkah on 05/12/2021.
//

import SwiftUI

struct CategoryCard: View{
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View{
        
        VStack{
            
        }.frame(width: 100, height: 120)
            .background(colorScheme == .dark ? Color(hex: "#212121") : Color(hex: "#e0e0e0")).cornerRadius(8)
    }
}


struct MostUsedView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Most used Categories").font(.system(size: 19))
            
            HStack{
                CategoryCard()
                CategoryCard()
                CategoryCard()
                
            }
            
            
            
            
            
        }.frame(width: VStackWidth, height: 200)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(8)
    }
}

struct MostUsedView_Previews: PreviewProvider {
    static var previews: some View {
        MostUsedView()
    }
}
