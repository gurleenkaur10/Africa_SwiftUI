//
//  CoverImageView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-19.
//

import SwiftUI

struct CoverImageView: View {
    
    //Mark:- Properties
    
    let coverImage: [CoverImage] = Bundle.main.decode("covers.json")
    
    //Mark:- Body
    
    var body: some View {
        TabView{
            ForEach(coverImage) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//: loop
        }//: tab 
        .tabViewStyle(PageTabViewStyle())
    }
}
//Mark:- Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
