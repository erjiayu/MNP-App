//
//  CarouselTab.swift
//  MProsth-APP
//
//  Created by Katherine Lee on 7/10/22.
//

import Foundation
import SwiftUI

// def of simple tab used in sliding carousel
struct Tab: Identifiable, Hashable {
    var id = UUID().uuidString
    var title: String
}
