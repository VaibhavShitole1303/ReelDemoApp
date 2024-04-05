//
//  FeedViewmodel.swift
//  ReelDemoApp
//
//  Created by Neosao Services on 05/04/24.
//

import Foundation


class FeedViewmodel :ObservableObject{
    @Published var posts = [Post]()
     let videosUrl = [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4" ,
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4" ,
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"
    ]
    init() {
        fetchPosts()
      
    }
    func fetchPosts(){
        self.posts = [
            .init(id: NSUUID().uuidString, videoUrl: videosUrl[0]),
            .init(id: NSUUID().uuidString, videoUrl: videosUrl[1]),
            .init(id: NSUUID().uuidString, videoUrl: videosUrl[2]),
            .init(id: NSUUID().uuidString, videoUrl: videosUrl[3]),
            .init(id: NSUUID().uuidString, videoUrl: videosUrl[4]),
        ]
    }
}
