//
//  CommunityView.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import SwiftUI

struct CommunityView: View {
    @State private var posts: [ForumPost] = []
    @State private var newPostContent: String = ""
    
    var body: some View {
        VStack {
            List(posts) { post in
                VStack(alignment: .leading) {
                    Text(post.author).font(.headline)
                    Text(post.content).padding(.top, 2)
                    Text(post.date, style: .date).font(.footnote).foregroundColor(.gray)
                }
            }
            
            HStack {
                TextField("Write your post...", text: $newPostContent)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Post") {
                    let newPost = ForumPost(author: "Farmer John", content: newPostContent, date: Date())
                    posts.append(newPost)
                    newPostContent = ""
                }
            }
            .padding()
        }
        .navigationTitle("Community")
    }
}


#Preview {
    CommunityView()
}
