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
                HStack(spacing: 12) {
                    ForEach(selectedTags, id: \.self) { tag in
                        TagView(tag, .pink, "checkmark")
                    }
                }
                .padding(.horizontal, 15)
                .frame(height: 35)
                .padding(.vertical, 15)
            }
            .overlay (content: {
                if selectedTags.isEmpty {
                    Text("Select More than 3 Tags")
                        .font(.callout)
                        .foregroundStyle(.gray)
                }
            })
            .background(.white)
            
            ScrollView(.vertical) {
                
            }
            .background(.black.opacity (0.05))
            
            ZStack {
                Button(action: {}, label: {
                    Text("Continue")
                        .fontWeight(.semibold)
                        .padding(.vertical, 15)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.pink.gradient)
                        }
                })
                // Disabling until 3 or more tags selected
                .disabled(selectedTags.count < 3)
                .opacity(selectedTags .count < 3 ? 0.5 : 1)
                .padding()
            }
            .background(.white)
        }
        .preferredColorScheme(.light)
    }
    
    // Tag View
    @ViewBuilder
    func TagView(_ tag: String, _ color: Color, _ icon: String) -> some View {
        HStack(spacing: 10) {
            Text(tag)
                .font(.callout)
                .fontWeight(.semibold)
            
            Image(systemName: icon)
        }
        .frame(height: 35)
        .foregroundStyle(.white)
        .padding(.horizontal, 15)
        .background {
            Capsule()
                .fill(color.gradient)
        }
    }
}

#Preview {
    ContentView()
}
