//
//  FruitModel.swift
//  FructApp_SwiftUI
//
//  Created by IKAKOOO on 12/15/22.
//

import SwiftUI

// MARK: - FRUIT DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
