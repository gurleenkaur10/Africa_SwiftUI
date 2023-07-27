//
//  AnimalListItemList.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-25.
//

import SwiftUI

struct AnimalListItemList: View {
    // Properties
    let animal: Animal
    //Body
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//vstack
        }//hstack
    }
}

struct AnimalListItemList_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemList(animal: animals[3])
    }
}
