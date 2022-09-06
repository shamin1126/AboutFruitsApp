//
//  ContentView.swift
//  AboutFruits
//
//  Created by BJIT on 6/9/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    var fruits: [Fruits] = fruitsData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {
                    item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
        }
            .navigationTitle("Fruits")
        }//:Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
