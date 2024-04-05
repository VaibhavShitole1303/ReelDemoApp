//
//  FeedCell.swift
//  ReelDemoApp
//
//  Created by Neosao Services on 05/04/24.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post:Post
    var Player: AVPlayer
    
    init(post:Post){
        self.post=post
        self.Player=AVPlayer(url: URL(string:post.videoUrl)!)
    }
    var body: some View {
        ZStack{
            CoustomVideoPlayer(player: Player)
                .containerRelativeFrame([.horizontal,.vertical])
                
            VStack{
                Spacer()
                HStack(alignment:.bottom){
                    VStack(alignment: .leading) {
                        Text("vaibhav shitole")
                            .fontWeight(.semibold)
                        Text("This is caption")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    Spacer()
                    VStack(spacing:28) {
                        Circle().frame(width: 48,height: 48)
                            .foregroundStyle(.gray)
                        Button{
                            
                        }label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                .foregroundStyle(.white)
                                
                                Text("23")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                            }
                          }
                        Button{
                            
                        }label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                .resizable()
                                .frame(width: 28,height: 28)
                                .foregroundStyle(.white)
                                Text("12")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                            }
                          }
                        Button{
                            
                        }label: {
                            Image(systemName: "bookmark.fill")
                            .resizable()
                            .frame(width: 22,height: 28)
                            .foregroundStyle(.white)
                    }
                        Button{
                            
                        }label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                            .resizable()
                            .frame(width: 28,height: 28)
                            .foregroundStyle(.white)
                    }
                    }
                }
                .padding(.bottom,80)
            }.padding()
        }.onAppear{
            print("Post id \(post.id)")
//            Player.play()
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"))
}
