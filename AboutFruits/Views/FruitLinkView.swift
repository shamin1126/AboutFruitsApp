//
//  FruitLinkView.swift
//  AboutFruits
//
//  Created by BJIT on 6/9/22.
//

import SwiftUI

struct FruitLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)

        }
    }
}

struct FruitLinkView_Previews: PreviewProvider {
    static var previews: some View {
        FruitLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
