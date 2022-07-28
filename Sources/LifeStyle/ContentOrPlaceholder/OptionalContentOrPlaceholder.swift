//
//  OptionalContentOrPlaceholder.swift
//  
//
//  Created by Daniel Mandea on 21.06.2022.
//

import SwiftUI

struct OptionalContentOrPlaceholder<Content: View, Placeholder: View, Item: Any>: View  {
    
    // MARK: - @State
    
    @Binding var items: [Item]?
    
    // MARK: - @ViewBuilder
    
    @ViewBuilder var content: () -> Content
    @ViewBuilder var placeholder: () -> Placeholder
    
    // MARK: - Body
    
    var body: some View {
        if items?.isEmpty ?? false {
            placeholder()
        } else {
            content()
        }
    }
}
