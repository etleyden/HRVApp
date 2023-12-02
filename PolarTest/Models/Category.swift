//
//  Category.swift
//  PolarTest
//
//  Created by Ethan Leyden on 11/30/23.
//

import Foundation
import SwiftUI

struct Category: Codable {
    var id: Int
    var name: String
    private var imgName: String
    var img: Image {
        Image(imgName)
    }
}
