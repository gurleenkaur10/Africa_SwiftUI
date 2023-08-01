//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-08-01.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal : Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animal[1])
    }
}
