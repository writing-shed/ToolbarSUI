//
//  RectangleOverlay.swift
//  
//  Created by Keith Lander on 13/09/2020.
//  Copyright © 2020 Keith Lander. All rights reserved.
//

import SwiftUI

#if os(iOS) || targetEnvironment(macCatalyst)
struct RectangleOverlay: ViewModifier {
    @inlinable
    func body(content: Content) -> some View {
        content
            .overlay(
                Rectangle()
                    .stroke(Color.gray, lineWidth: 1.0))
    }
}
#endif
