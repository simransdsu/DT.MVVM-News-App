//
//  NewsImage.swift
//  MVVM News App
//
//  Created by Simran Preet Singh Narang on 2022-06-21.
//

import SwiftUI

struct NewsImageView: View {
    
    let urlString: String
    
    var body: some View {
        AsyncImage(url: URL(string: urlString)) { image in
            image
                .resizable()
                .scaledToFill()
                .cornerRadius(10)
                
        } placeholder: {
            ProgressView()
                .frame(width: 100, height: 100)
                .background(Color.secondary.opacity(0.5))
                .cornerRadius(10)
        }
    }
}

struct NewsImage_Previews: PreviewProvider {
    static var previews: some View {
        NewsImageView(urlString: "")
    }
}
