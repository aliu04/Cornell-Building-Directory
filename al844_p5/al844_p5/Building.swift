//
//  Building.swift
//  al844_p5
//
//  Created by Ashley Liu on 2022-10-29.
//

import Foundation
import UIKit

class Building {
    var imageName: String
    var buildingName: String
    var location: String
    var type: String
    var isSelected: Bool

    init (imageName: String, buildingName: String, location: String, type: String, isSelected: Bool) {
        self.imageName = imageName
        self.buildingName = buildingName
        self.location = location
        self.type = type
        self.isSelected = isSelected
    }
}
