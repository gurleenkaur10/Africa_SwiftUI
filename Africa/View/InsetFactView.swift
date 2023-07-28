//
//  InsetFactView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-27.
//

import SwiftUI

struct InsetFactView: View {
    //Properties
    let animal: Animal
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }// Tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//Box
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animal[5])
    }
}
