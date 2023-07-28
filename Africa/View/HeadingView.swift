//
//  HeadingView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-27.
//

import SwiftUI

struct HeadingView: View {
    //Properties
    var headingImage: String
    var headingText: String
    //Body
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }//Hstack
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
    }
}
