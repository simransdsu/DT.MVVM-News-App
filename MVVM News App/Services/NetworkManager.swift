//
//  NetworkManager.swift
//  MVVM News App
//
//  Created by Simran Preet Narang on 2022-06-21.
//

import Foundation

class NetworkManager {
  
  public static let shared = NetworkManager()
  
  private init() { }
  
  func getNews() async throws -> [News] {
    let (data, _) = try await URLSession.shared.data(from: API.GET_TOP_HEADLINES_URL(country: "us", category: "business"))
    let newsResult = try JSONDecoder().decode(NewsResult.self, from: data)
    return newsResult.articles
  }
  
  func getData(fromUrl urlString: String) async throws -> Data? {
    guard let url = URL(string: urlString) else {
      throw AppError(message: "Invalid request. Please try again",
                     description: "Invalid URL: \(urlString), please make sure your url is correct.")
    }
    let (data, _) = try await URLSession.shared.data(from: url)
    return data
  }
}
