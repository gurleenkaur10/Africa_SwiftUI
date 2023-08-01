//
//  ContentView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-19.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = false
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    // Function
    
    func gridswitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("grid count \(gridColumn)")
        
        // toolbar image
        switch gridColumn{
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
    var body: some View {
        
        
        NavigationView{
            Group{
                
                if !isGridViewActive {
                    List{
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        ForEach(animals) { animal in
                            
                            NavigationLink( destination: AnimalDetailView(animal: animal)){
                                AnimalListItemList(animal: animal)
                            }//Link
                        }//Loop
                    }//List
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)){
                                    AnimalGridItemView(animal: animal)
                                }//Link
                            }//loop
                        }//grid
                        .padding(10)
                        .animation(.easeIn)
                    }// scroll
                }//Condition
            }//group
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 16){
                        Button(action: {
                            print("List View is Activated")
                            isGridViewActive = false
                            haptics.impactOccurred()
                        }){
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }
                        // Grid
                        Button(action: {
                            print("Grid View is Activated")
                            isGridViewActive = true
                            haptics.impactOccurred()
                            gridswitch()
                        }){
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        }
                        
                    }// hstack
                }//toolbarButtons
            }// toolbar
        }// Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
