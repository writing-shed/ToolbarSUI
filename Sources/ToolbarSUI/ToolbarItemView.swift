//
//  ToolbarItemView.swift
//
//  Created by Keith Lander on 24/07/2020.
//  Copyright © 2020 Keith Lander. All rights reserved.
//

import SwiftUI

#if os(iOS) || targetEnvironment(macCatalyst)
public struct ToolbarItemView: View {
    @inlinable
    @Binding var selected : Int
    @usableFromInline
    public let index: Int
    @usableFromInline
    public let item: ToolbarItem
    var isSelected : Bool{
        selected == index
    }

    @inlinable
    public var body: some View {
        HStack {
            item.icon
                .imageScale(.large)
        }
        .padding()
    }
}
#endif
