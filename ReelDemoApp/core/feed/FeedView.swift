//
//  FeedView.swift
//  ReelDemoApp
//
//  Created by Neosao Services on 05/04/24.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewmodel()
    var body: some View {
        ScrollView{
            LazyVStack(spacing:0){
                ForEach(viewModel.posts){post in
                   FeedCell(post: post)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
