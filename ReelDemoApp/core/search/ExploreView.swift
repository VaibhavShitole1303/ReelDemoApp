//
//  ExploreView.swift
//  ReelDemoApp
//
//  Created by Neosao Services on 05/04/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing:16){
                    ForEach(0 ..< 20){user in
                        UserCell()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Expolre")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
