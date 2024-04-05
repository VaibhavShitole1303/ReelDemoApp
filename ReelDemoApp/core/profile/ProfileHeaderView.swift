//
//  ProfileHeaderView.swift
//  ReelDemoApp
//
//  Created by Neosao Services on 05/04/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing:16){
            VStack(spacing:6){
                //Profile Image
                Image(systemName: "person.circle.fill")
                     .resizable()
                     .frame(width: 80,height: 80)
                     .foregroundColor(Color(.systemGray5))
                //User name
                Text("@Vaibhav_Shitole")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            // stats view
            HStack(spacing:16){
                UserStatsView(value: 12, title: "Following")
                UserStatsView(value: 120, title: "Follower")
                UserStatsView(value: 1234, title: "Likes")
               
            }
            //Button
            Button{
                
            }label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360,height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            Divider()
            
        }
    }
}

#Preview {
    ProfileHeaderView()
}

