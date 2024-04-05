//
//  UserStatsView.swift
//  ReelDemoApp
//
//  Created by Neosao Services on 05/04/24.
//

import SwiftUI

struct UserStatsView: View {
    let value:Int
    let title:String
    var body: some View {
        VStack(spacing:6){
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80,alignment: .center)
    }
}

#Preview {
    UserStatsView(value: 1, title: "demo")
}
