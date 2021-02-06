//
//  ContentView.swift
//  Shared
//
//  Created by Ryan Newsom on 2/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Image("Illustration 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }

            Text("Swift UI for iOS 14")
                .font(.body)
                .fontWeight(.bold)
                
            Text("20 Sections")
                .font(.footnote)
                .fontWeight(.bold)
                
        }
        .padding(.all)
        .background(Color.blue)
        .cornerRadius(20.0)
        .shadow(radius: 10)
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
