//
//  NetworkManager.swift
//  MVVM News App
//
//  Created by Simran Preet Narang on 2022-06-21.
//

import Foundation

class NetworkManager {
  
  func getNews() async throws -> [News] {
    let (data, _) = try await URLSession.shared.data(from: API.GET_TOP_HEADLINES_URL(country: "us", category: "business"))
    let newsResult = try JSONDecoder().decode(NewsResult.self, from: data)
    return newsResult.articles
  }
}
