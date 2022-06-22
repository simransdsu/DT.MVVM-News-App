//
//  TitleDescriptionView.swift
//  MVVM News App
//
//  Created by Simran Preet Singh Narang on 2022-06-21.
//

import SwiftUI

struct TitleDescriptionView: View {
    
    let item: NewsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title)
                .font(.title3.bold())
            Text(item.description)
                .lineLimit(3)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct TitleDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        let news = News(author: "Author",
                        title: "Breaking News",
                        description: "This is the description of the news we are reading",
                        urlToImage: "",
                        url: "",
                        source: News.Source(id: "12334", name: "New York Times"))
        let newsViewModel = NewsViewModel(news: news)
        TitleDescriptionView(item: newsViewModel)
    }
}
