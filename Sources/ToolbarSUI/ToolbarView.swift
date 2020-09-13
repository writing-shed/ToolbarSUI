//
//  ToolbarView.swift
//
//  Created by Keith Lander on 24/07/2020.
//  Copyright © 2020 Keith Lander. All rights reserved.
//

import SwiftUI

#if os(iOS)
struct ToolbarView : View {
    @State private var selectedIndex = -1
    public let items: [ToolbarItem]
    public let action: (Int)->Void
    public var label: String
    
    init(label: String, items: [ToolbarItem], action:@escaping (Int)->Void) {
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
                if !label.isEmpty {
                    Text(label)
                        .foregroundColor(Color.gray)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                }
                ForEach(0..<items.count) { index in
                    Spacer()
                    self.itemView(at: index)
                    Spacer()
                }
            }
        }
        .modifier(RectangleOverlay())
    }
}
#endif
