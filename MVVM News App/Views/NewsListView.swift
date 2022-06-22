  //
  //  NewsListView.swift
  //  MVVM News App
  //
  //  Created by Simran Preet Singh Narang on 2022-06-21.
  //

import SwiftUI

struct NewsListView: View {
  
  @ObservedObject var newsListViewModel: NewsListViewModel
  
  var body: some View {
    NavigationView {
      List {
        ForEach(newsListViewModel.newsItems, id: \.url) { item in
          NewsCell(item: item)
        }
        .listRowSeparator(.hidden)
      }
      .listStyle(.plain)
      .navigationTitle(Text("Headlines ⨁"))
    }
    .navigationViewStyle(.stack)
  }
}

struct NewsListView_Previews: PreviewProvider {
  static var previews: some View {
    let newsListViewModel = NewsListViewModel()
    NewsListView(newsListViewModel: newsListViewModel)
  }
}
