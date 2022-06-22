  //
  //  NewsListView.swift
  //  MVVM News App
  //
  //  Created by Simran Preet Singh Narang on 2022-06-21.
  //

import SwiftUI

struct NewsListView: View {
  
  @ObservedObject var newsListViewModel: NewsListViewModel
  
  @State private var selectedNewsItem: NewsViewModel? = nil
  @State private var showDetailView = false
  
  var body: some View {
    NavigationView {
      List {
        ForEach(newsListViewModel.newsItems, id: \.url) { item in
          NewsCell(item: item)
            .onTapGesture {
              selectNewsItem(withItem: item)
            }
        }
        .sheet(isPresented: $showDetailView, content: {
          SwiftUIWebView(urlString: selectedNewsItem?.url ?? "")
        })
        .listRowSeparator(.hidden)
      }
      .listStyle(.plain)
      .navigationTitle(Text("Headlines ⨁"))
    }
    .navigationViewStyle(.stack)
  }
  
  private func selectNewsItem(withItem item: NewsViewModel) {
    selectedNewsItem = item
    showDetailView = true
  }
}

struct NewsListView_Previews: PreviewProvider {
  static var previews: some View {
    let newsListViewModel = NewsListViewModel()
    NewsListView(newsListViewModel: newsListViewModel)
  }
}
