//
//  ProfileGrideView.swift
//  ReelDemoApp
//
//  Created by Neosao Services on 05/04/24.
//

import SwiftUI

struct ProfileGrideView: View {
    private let items=[
        GridItem(.flexible(),spacing:  1),
        GridItem(.flexible(),spacing:  1),
        GridItem(.flexible(),spacing:  1),
    ]
    private let width = (UIScreen.main.bounds.width / 3) - 2
    var body: some View {
        LazyVGrid(columns:items,spacing: 2){
            ForEach(0 ..< 17){post in
                Rectangle()
                    .frame(width: width,height: 160)
                    .clipped()
            }
        }.padding(.top)
    }
}

#Preview {
    ProfileGrideView()
}
