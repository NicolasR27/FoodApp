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
                Text("Order Awesome Burger")
                    .font(.title)
                Text("is the Best Burger There!")
                
                // Quanity
                Section(header:Text("Quantity")){
                    Stepper(value: $quantity){
                        Text(quantity.description)
                    }
                }
                
                Section(header:Text("options")){
                    Picker(selection: $bun, label: Text("Bun")) {
                        ForEach(bunTypes,id: \.self) { (bun) in
                            Text(bun)
                          }
                        }  
                        
                       Picker(selection: $cheese, label: Text("cheese")) {
                            ForEach(bunTypes,id: \.self) { (cheese) in
                                Text(cheese)
                                
                            }
                            
                            
                            
                        }
                        
                        
                        Picker(selection: $protein, label: Text("protein")) {
                            ForEach(bunTypes,id: \.self) { (protein) in
                                Text(protein)
                                
                            }
                            
                            
                            
                        }
                        
                        
                        
                        
                    }
                    Section(header:Text("Special Instructions")) {
                        TextField("special instructions",text:$specialInstructions)
                    }
                    
                    Button(action: submitOrder) {
                        Text("submit Order")
                        
                    }
                }
                
            }
            
        }
        
              func submitOrder() {
                //do something
            }
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    
