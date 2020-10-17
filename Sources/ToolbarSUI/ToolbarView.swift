//
//  ToolbarView.swift
//
//  Created by Keith Lander on 24/07/2020.
//  Copyright © 2020 Keith Lander. All rights reserved.
//

import SwiftUI

#if os(iOS) || targetEnvironment(macCatalyst)
public struct ToolbarView : View {
    @State private var selectedIndex = -1
    public let items: [ToolbarItem]
    public let action: (Int)->Void
    public var label: String?
    
    /// View Initialiser
    /// - Parameters:
    ///   - label: Test to appear on the left of the toolbar. Omit if not needed.
    ///   - items: An array of ToolbarItems. Each entry specifies a button.
    ///   - action: This is a closure that manages button presses. It has a single Int argument
    ///     with values in the range 0 to the number of buttons.
    public init(label: String? = nil, items: [ToolbarItem], action:@escaping (Int)->Void) {
        self.items = items
        self.action = action
        self.label = label
    }
    
    func itemView(at index: Int) -> some View {
        Button(action: {
            withAnimation { self.action(index) }
        }) {
            ToolbarItemView(selected: self.$selectedIndex,
                            index: index,
                            item: items[index])
        }.disabled(items[index].disabled)
    }
    
    public var body: some View {
        HStack(alignment: .bottom) {
            HStack(alignment: .center) {
                if label != nil {
                    Text(label!)
                        .foregroundColor(Color.gray)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                }
                ForEach(0..<items.count) { index in
                    Spacer()
                    self.itemView(at: index)
                    Spacer()
                }
                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
            }
        }
        .modifier(RectangleOverlay())
    }
}
#endif
