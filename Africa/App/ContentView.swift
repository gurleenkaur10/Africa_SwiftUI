//
//  ContentView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    AnimalListItemList(animal: animal)
                }
            }//List
            .navigationBarTitle("Africa", displayMode: .large)
        }// Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
