//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-27.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    let animal : Animal
    
    var body: some View {
        Group {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            }// hstack
        }// box
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animal[3])
    }
}
