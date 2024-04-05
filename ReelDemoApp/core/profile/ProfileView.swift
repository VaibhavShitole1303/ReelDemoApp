//
//  ProfileView.swift
//  ReelDemoApp
//
//  Created by Neosao Services on 05/04/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing:2){
                //Profile Header
                    ProfileHeaderView()
                //post Gride
                    ProfileGrideView()
               }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ProfileView()
}
