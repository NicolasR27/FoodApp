//
//  ContentView.swift
//  FoodApp
//
//  Created by Nicolas Rios on 11/28/19.
//  Copyright © 2019 Nicolas Rios. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let BunTypes = ["patato roll", "sesame see bun"]
    let cheeseTypes = ["American","PerperJack","Swiss"]
    let proteinTypes = ["Beef","Chicken","Veggie"]
    
    @State var Quantity: Int = 0
    
    var body: some View {
        Form {
        Text("Order Awesome Burger")
            .font(.title)
        Text("Is the Best Burger There!")
            
            // Quanity
            Stepper("Qauntity",value: $Quantity)
        
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
