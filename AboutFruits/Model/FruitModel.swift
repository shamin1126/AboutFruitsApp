//
//  FruitModel.swift
//  AboutFruits
//
//  Created by BJIT on 6/9/22.
//

import Foundation
import SwiftUI

//MARK: Fruits Data Model
struct Fruits: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
