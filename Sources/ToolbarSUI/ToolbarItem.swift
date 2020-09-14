//
//  ToolbarItem.swift
//
//  Created by Keith Lander on 24/07/2020.
//  Copyright © 2020 Keith Lander. All rights reserved.
//

import SwiftUI

#if os(iOS) || targetEnvironment(macCatalyst)
public struct ToolbarItem {
    public let icon: Image
    public let title: String
    public let disabled:Bool
    
    public init(icon: Image,
                title: String,
                disabled: Bool){
        self.icon = icon
        self.title = title
        self.disabled = disabled
    }
    
    public init(icon: String,
                title: String,
                disabled: Bool) {
        self = ToolbarItem(icon: Image(systemName: icon),
                           title: title,
                           disabled: disabled)
    }
}
#endif

