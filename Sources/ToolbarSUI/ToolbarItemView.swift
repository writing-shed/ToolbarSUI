//
//  ToolbarItemView.swift
//
//  Created by Keith Lander on 24/07/2020.
//  Copyright © 2020 Keith Lander. All rights reserved.
//

import SwiftUI

#if os(iOS)
public struct ToolbarItemView: View {
    @Binding var selected : Int
    public let index: Int
    public let item: ToolbarItem
    var isSelected : Bool{
        selected == index
    }

    public var body: some View {
        HStack {
            item.icon
                .imageScale(.large)
        }
        .padding()
    }
}
#endif
