//
//  NotificationCell.swift
//  ReelDemoApp
//
//  Created by Neosao Services on 05/04/24.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack(){
           Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32,height: 32)
                .foregroundColor(Color(.systemGray5))
            HStack{
                Text("User_2")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                Text(" Like post .")
                    .font(.footnote) +
                Text(" 1d")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Rectangle()
                .frame(width: 48,height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
