//
//  ContentView.swift
//  FoodApp
//
//  Created by Nicolas Rios on 11/28/19.
//  Copyright © 2019 Nicolas Rios. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let bunTypes: [String] = ["Patato roll", "SwissBun","SourDough"]
    let cheeseTypes = ["American","PerperJack","Swiss"]
    let proteinTypes = ["Beef","Chicken","Veggie"]
    
    @State var quantity: Int = 0
    @State var bun: String = ""
    @State var cheese:String = ""
    @State var protein:String = ""
    @State var specialInstructions: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                
                VStack(alignment:.leading,spacing: 8){
                    Text("Order awesome burger")
                        .font(.title)
                    Text("is the best burger there is!")
                }
                
                
                // Quanity
                Section(header:Text("Quantity")){
                    Stepper(value: $quantity){
                        Text(quantity.description)
                    }
                }
                
                Section(header:Text("Options")){
                    Picker(selection: $bun, label: Text("Bun")) {
                        ForEach(bunTypes,id: \.self) { (bun) in
                            Text(bun)
                        }
                    }
                    
                    Picker(selection: $cheese, label: Text("cheese")) {
                        ForEach(cheeseTypes,id: \.self) { (cheese) in
                            Text(cheese)
                            
                        }
                        
                        
                        
                    }
                    
                    
                    Picker(selection: $protein, label: Text("Protein")) {
                        ForEach(proteinTypes,id: \.self) { (protein) in
                            Text(protein)
                            
                        }
                        
                        
                        
                    }
                    
                    
                    
                    
                }
                Section(header:Text("Special Instructions")) {
                    TextField("special instructions",text:$specialInstructions)
                }
                
                Button(action: SubmitOrder) {
                    Text("submit Order")
                    
                }
                
              
                
            }
            
        }
        
    }
    
    func SubmitOrder() {
        //do something
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

