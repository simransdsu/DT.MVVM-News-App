//
//  News.swift
//  MVVM News App
//
//  Created by Simran Preet Narang on 2022-06-21.
//

import Foundation

struct News: Decodable {
  let author: String?
  let title: String?
  let description: String?
  let urlToImage: String?
  let url: String
  let source: Source?
  
  struct Source: Codable {
    let id: String?
    let name: String?
  }
}

struct NewsResult: Decodable {
  let status: String
  let totalResults: Int
  let articles: [News]
}
