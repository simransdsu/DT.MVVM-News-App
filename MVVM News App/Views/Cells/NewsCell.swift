//
//  NewsCell.swift
//  MVVM News App
//
//  Created by Simran Preet Singh Narang on 2022-06-21.
//

import SwiftUI

struct NewsCell: View {
    
    let item: NewsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: item.urlToImage)) { image in
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
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title3.bold())
                Text(item.description)
                    .lineLimit(3)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct NewsCell_Previews: PreviewProvider {
    
    static var previews: some View {
        let news = News(author: "Author",
                        title: "Breaking News",
                        description: "This is the description of the news we are reading",
                        urlToImage: "",
                        url: "",
                        source: News.Source(id: "12334", name: "New York Times"))
        let newsViewModel = NewsViewModel(news: news)
        return NewsCell(item: newsViewModel)
    }
}
