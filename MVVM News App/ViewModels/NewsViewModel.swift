//
//  NewsViewModel.swift
//  MVVM News App
//
//  Created by Simran Preet Narang on 2022-06-21.
//

import Foundation

struct NewsViewModel {
  private let news: News
  
  init(news: News) {
    self.news = news
  }
  
  var author: String {
    return news.author ?? "Unknown"
  }
  
  var description: String {
    return news.description ?? "No description available"
  }
  
  var title: String {
    return news.title ?? "Unknown title"
  }
  
  var url: String {
    return news.url
  }
  
  var urlToImage: String {
    return news.urlToImage ?? "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/breaking-news-poster-design-template-232c3f2700b91a0fd6e3a5a2e583a5da_screen.jpg"
  }
}
