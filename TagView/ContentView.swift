//
//  ContentView.swift
//  TagView
//
//  Created by Yunus Emre Taşdemir on 17.09.2023.
//

import SwiftUI

struct ContentView: View {
    // View Properties
    // Sample Tags
    @State private var tags: [String] = [ "SwiftUI", "Swift", "jos", "Apple", "Xcode", "WWDC", "Android", "React", "Flutter", "App", "Indie", "Developer", "Objc", "C#", "C", "C++", "iPhone", "iPad", "Macbook", "iPadOS", "macOS"
    ]
    // Selection
    @State private var selectedTags: [String] = []
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal) {
                
            }
        }
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
