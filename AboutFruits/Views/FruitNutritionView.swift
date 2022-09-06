//
//  FruitNutritionView.swift
//  AboutFruits
//
//  Created by BJIT on 6/9/22.
//

import SwiftUI

struct FruitNutritionView: View {
    var fruit: Fruits
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional Value per 100 gm") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength:25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }

        }// GROUPBOX

    }
}

struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 400))
            .padding()
    }
}
