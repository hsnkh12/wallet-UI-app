//
//  WalletScreenView.swift
//  WalletCoreData
//
//  Created by Hassan El Abdakkah on 07/12/2021.
//

import SwiftUI


struct WalletSheet: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var walletViewModel : WalletViewModel

    
    init(wVM : WalletViewModel){
        self.walletViewModel = wVM
    }
    
    var body: some View {
        
        VStack{
            Form{
                
                TextField("Worth",text: $walletViewModel.worth_amount)
                    .keyboardType(.numberPad)
                TextField("Worth",text: $walletViewModel.creditcard_amount)
                    .keyboardType(.numberPad)
            }
            Button("save"){
                
                dismiss()
                
            }
        }
    }
}

struct ExpenseSheet: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var expensesViewModel : ExpensesViewModel
    let categories = ["Food","Home needs","Other"]
    
    init(eVM : ExpensesViewModel){
        self.expensesViewModel = eVM
    }
    
    var body: some View {
        
        VStack{
            Form{
                
                TextField("Amount",text: $expensesViewModel.amount)
                Picker("Category",selection:$expensesViewModel.category){
                    
                    ForEach(categories,id: \.self){ c in
                            
                            Text(c)
                    
                    }
                }.pickerStyle(SegmentedPickerStyle())

            }
            
            Button("Save"){
                dismiss()
                
            }
        }
    }
}

struct WalletScreenView: View {
    
    // we have to get the view model resposible for this view
    @ObservedObject var walletViewModel : WalletViewModel
    @ObservedObject var expensesViewModel : ExpensesViewModel
    
    @State var walletSheet = false
    @State var expenseSheet = false
    
    init(wVM : WalletViewModel, eVM : ExpensesViewModel){
        self.walletViewModel = wVM
        self.expensesViewModel = eVM
    }
    
    var body: some View {
        
        
            
            NavigationView{
                
                VStack{
                    Text("Worth: ")
                    Text("Credit: ")
                    Text("Debts: ")
                    
                    
                    List{
                        
                        ForEach(0..<7, id: \.self){ _ in
                            
                            Text("Expense")
                        }
                    }

                }
                
                .navigationBarItems(trailing:
                                        HStack{
                    
                    Button("edit"){
                        
                        walletSheet.toggle()
                        
                    }.sheet(isPresented: $walletSheet) {
                        WalletSheet(wVM: walletViewModel)
                    }
                    Button("Add"){
                        
                        expenseSheet.toggle()
                        
                    }.sheet(isPresented: $expenseSheet) {
                        ExpenseSheet(eVM: expensesViewModel)
                    }
                })
            }
            
        
    }
}

//struct WalletScreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        WalletScreenView()
//    }
//}
