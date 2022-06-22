//
//  API.swift
//  MVVM News App
//
//  Created by Simran Preet Narang on 2022-06-21.
//

import Foundation

struct API {
  static let KEY = "a6e5a94ad57a46418b08beff34dc1fc4"
  
  static let NEWS_BASE_URL = "https://newsapi.org/v2"
  static let EVERYTHING_ENDPOINT = "\(NEWS_BASE_URL)/everything?apiKey=\(KEY)"
  
  static func GET_TOP_HEADLINES_URL(country: String, category: String) throws -> URL {
    let urlstring = "\(NEWS_BASE_URL)/top-headlines?apiKey=\(KEY)&country=\(country)&category=\(category)"
    guard let url = URL(string: urlstring) else {
      throw AppError(message: "Invalid request. Please try again",
                     description: "Invalid URL: \(urlstring), please make sure your url is correct.")
    }
    return url
  }
}
