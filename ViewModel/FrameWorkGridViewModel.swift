//
//  FrameWorkGridViewModel.swift
//  Apple-FrameWorks
//
//  Created by Althaf'zMac on 21/03/25.
//

import Foundation
import SwiftUI

final class FrameWorkGridViewModel: ObservableObject {
    

    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
}
