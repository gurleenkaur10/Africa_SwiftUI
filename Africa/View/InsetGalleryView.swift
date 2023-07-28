//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-27.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            
        
        HStack(alignment: .center, spacing: 15) {
            ForEach(animal.gallery, id: \.self) { item in
                Image(item)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                .cornerRadius(12)
            }
            }// hstack
        }//scroll
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        
        InsetGalleryView(animal: animal[2])
    }
}
