//
//  CartView.swift
//  sweater_shop
//
//  Created by Debdutta Panda on 05/08/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    @State private var isPresentingConfirm : Bool = false
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id){
                    product in
                    ProductRow(product: product)
                }
                VStack{
                    HStack{
                        Text("Your cart total is")
                        Spacer()
                        Text("$\(cartManager.total).00")
                            .bold()
                    }
                    Button{
                        isPresentingConfirm = true
                    } label: {
                        HStack{
                            Image(systemName: "trash")
                                .font(.body)
                            Text("Clear Cart")
                                .fontWeight(.semibold)
                                .font(.body)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(40)
                    }
                    .confirmationDialog("Are you sure?",
                                        isPresented: $isPresentingConfirm){
                        Button("Delete all items?", role: .destructive){
                            cartManager.clear()
                        }
                    } message: {
                        Text("You can not undo this action")
                    }
                }
                .padding()
            }
            else{
                Text("Your cart is empty")
            }
        }
        .navigationTitle("My cart")
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
