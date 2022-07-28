//
//  ContentOrPlaceholder.swift
//  Thrust
//
//  Created by Daniel Mandea on 04.02.2022.
//

import SwiftUI

struct ContentOrPlaceholder<Content: View, Placeholder: View, Item: Any>: View  {
    
    // MARK: - @State
    
    @Binding var items: [Item]
    
    // MARK: - @ViewBuilder
    
    @ViewBuilder var content: () -> Content
    @ViewBuilder var placeholder: () -> Placeholder
    
    // MARK: - Body
    
    var body: some View {
        if items.isEmpty {
            placeholder()
        } else {
            content()
        }
    }
}



// MARK: - PreviewProvider

struct ContentOrPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        ContentOrPlaceholder(items: .constant([true])) {
            Text("Content")
        } placeholder: {
            Text("Placeholder")
        }
    }
}
