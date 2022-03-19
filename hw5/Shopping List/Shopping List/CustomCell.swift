//
//  CustomCell.swift
//  Shopping List
//
//  Created by Tony Hong on 3/12/22.
//

import SwiftUI

struct CustomCell: View {
    
    var imageName: String
    var itemName: String
    var quantity: Int
    var body: some View{
        HStack{
            Text(itemName)
                .padding()
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Spacer()
            
            Text(String(quantity))
    }
        }
    }
    
    


