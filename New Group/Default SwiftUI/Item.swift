//
//  Item.swift
//  Apple-FrameWorks
//
//  Created by Althaf'zMac on 21/03/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
