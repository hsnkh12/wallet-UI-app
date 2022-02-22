//
//  WalletAmountView.swift
//  WalletUi
//
//  Created by Hassan El Abdakkah on 04/12/2021.
//

import SwiftUI
import SwiftUICharts

struct ChartElement: View{
    
    var name : String
    var bgColor : String
    var amount : String
    
    var body: some View{
        
        VStack(alignment: .leading){
            
            HStack{
                
                Circle()
                    .foregroundColor(Color(hex: bgColor))
                    .frame(width: 14, height: 14)
                Text(name)
            }
            
            Text(amount)
                .font(.system(size: 15))
            
        }
    }
}

struct WalletAmountView: View {
    
    var demoData: [Double] = [2.00, 1.00,1.00]
    var chartColors = [
        ColorGradient(Color(hex: "#000957")),
        ColorGradient(Color(hex: "#344CB7")),
        ColorGradient(Color(hex: "#577BC1")),
        
        
    ]
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Amount")
                .font(.title2)
                .fontWeight(.semibold)
            
            VStack(){
                Spacer().frame(height: 20)
                HStack(spacing: 60){
                    
                PieChart()
                        .data(demoData)
                        .chartStyle(
                            ChartStyle(backgroundColor: Color(.systemBackground),
                                       foregroundColor: chartColors))
                        .frame(width: 185, height: 185)
                        .foregroundColor(Color.black)
                        
                    
                    VStack(alignment: .leading,spacing: 10){
                        
                        ChartElement(name: "Worth",bgColor: "#000957",amount: "2.00")
                        ChartElement(name: "Credit",bgColor: "#344CB7",amount: "1.00")
                        ChartElement(name: "Debts",bgColor: "#577BC1",amount: "1.00")
                        
                    }
                        
                }
            }.frame(width:VStackWidth)
            
        }.frame(width:VStackWidth)
    }
}

struct WalletAmountView_Previews: PreviewProvider {
    static var previews: some View {
        WalletAmountView()
    }
}
