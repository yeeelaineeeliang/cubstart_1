//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int
    
    init(image: String, item: String, productQuantity: Int){
        self.imageName = image
        self.itemName = item
        self.quantity = productQuantity
    }
}

struct ContentView: View {
    
    var fruit_list = [
        Items(image: "banana", item: "Bananas", productQuantity: 3),
        Items(image: "apple", item: "Apples", productQuantity: 4),
        Items(image: "eggs", item: "Eggs", productQuantity: 12),
    ]
    
    var snack_list = [
        Items(image: "chip", item: "Chips", productQuantity: 5),
        Items(image: "chocolate", item: "Chocolate", productQuantity: 10),
    ]
    
    var drinks_list = [
        Items(image: "coke", item: "Coke", productQuantity: 9),
        Items(image: "orange_juice", item: "Orange_juice", productQuantity: 5),
    ]
    var body: some View {
        List{
            Section(header: Text("Fruits")) {
                ForEach(fruit_list){ i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    
            Section(header: Text("Snacks")){
                ForEach(snack_list){i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                
            Section(header: Text("Drinks")){
                ForEach(drinks_list){i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }
        }
            }
        }.navigationBarTitle("Shopping List")

    }
}


