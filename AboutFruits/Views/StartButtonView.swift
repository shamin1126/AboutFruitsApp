//
//  StartButtonView.swift
//  AboutFruits
//
//  Created by BJIT on 6/9/22.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: Property

    //MARK: Body
    var body: some View {
        Button(action: {
            print("Exit the onboarding")

        }) {
            HStack(spacing: 8) {
                Text("Start")

                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth:  1.25)

            )
        }//: Button
        .accentColor(Color.white)
    }
}

//MARK: preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
