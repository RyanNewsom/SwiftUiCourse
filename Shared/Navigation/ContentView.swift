//
//  ContentView.swift
//  Shared
//
//  Created by Ryan Newsom on 2/6/21.
//

import SwiftUI

struct ContentView: View {
    #if os(iOS)
     @Environment(\.horizontalSizeClass) var horizontalSizeClass
     #endif
     
     @ViewBuilder
     var body: some View {
         #if os(iOS)
         if horizontalSizeClass == .compact {
             TabBar()
         } else {
             Sidebar()
         }
         #else
         Sidebar()
             .frame(minWidth: 1000, minHeight: 600)
         #endif
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewLayout(.fixed(width: 200.0, height: 200.0       ))
                .preferredColorScheme(.dark)
        }
    }
}
