//
//  ContentView.swift
//  Africa
//
//  Created by Sergei Shekshuev on 18.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 280)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                            .padding(.vertical, 10)
                    }
                    
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
            .listStyle(.plain)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
