//
//  MainStatsView.swift
//  WalletUi
//
//  Created by Hassan El Abdakkah on 04/12/2021.
//

import SwiftUI

struct MainStatsView: View {
    var body: some View {
        NavigationView{
            
            VStack{
                
                TitleCardView(primaryText: "", secondaryText: "",secondaryTextColor: "")
                
                WeeklyStatsView()
                
                MostUsedView()
                
            }
            .navigationTitle(Text("Statistics"))
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
    }
}

struct MainStatsView_Previews: PreviewProvider {
    static var previews: some View {
        MainStatsView()
    }
}
