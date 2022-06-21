//
//  NewsListViewModel.swift
//  MVVM News App
//
//  Created by Simran Preet Narang on 2022-06-21.
//

import Foundation

@MainActor
final class NewsListViewModel: ObservableObject {
  
  @Published var newsItems: [NewsViewModel] = [] {
    didSet { Task { await cacheImages() } }
  }
  @Published var imageData = [String: Data]()
  @Published var viewState: ViewState = .loaded
  @Published var error: AppError? = nil
  
  public func fetchNews() async {
    viewState = .loading
    do {
      newsItems = try await NetworkManager.shared.getNews().map(NewsViewModel.init)
    } catch {
      viewState = .error(error as? AppError)
      self.error = error as? AppError
    }
  }
  
  private func cacheImages() async {
    for newsItem in newsItems {
      if !imageData.keys.contains(newsItem.urlToImage) {
        do {
          imageData[newsItem.urlToImage] = try await NetworkManager.shared.getData(fromUrl: newsItem.urlToImage)
        } catch {
          viewState = .error(error as? AppError)
          self.error = error as? AppError
        }
      }
    }
  }
  
}

enum ViewState {
  case loading, loaded, error(AppError?)
}
