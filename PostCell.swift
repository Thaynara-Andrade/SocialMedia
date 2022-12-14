//
//  PostCell.swift
//  networking
//
//  Created by Milena Lima de Alcântara on 10/08/22.
//

import SwiftUI

struct PostCell: View {
    let post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("\(post.content)")
                    .foregroundColor(.black)
                    .font(.headline)
                    .padding()
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(.purple, lineWidth: 2)
                    .frame(width: 350, height: 160, alignment: .center)
                    .background(.white)
                    .padding()
            )
            
            VStack{ RoundedRectangle(cornerRadius: 10)
                    .frame(width: 350, height: 40, alignment: .leading)
                    .foregroundColor(.purple)
                    .padding()
                
           
            Spacer(minLength: 20)
        }
    }
}
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(post: Post(id: "1", content: "Post teste", userId: "1", createdAt: Date(), updatedAt: Date()))
    }
}
