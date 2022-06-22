  //
  //  ContentView.swift
  //  MVVM News App
  //
  //  Created by Simran Preet Narang on 2022-06-20.
  //

import SwiftUI

struct ContentView: View {
  
  @StateObject var newsListViewModel = NewsListViewModel()
  
  var body: some View {
    Group {
      switch(newsListViewModel.viewState) {
        case .loading:
          ProgressView()
        case .loaded:
          NewsListView(newsListViewModel: newsListViewModel)
        case .error:
          Text("Error occurred")
      }
    }
    .task {
      await newsListViewModel.fetchNews()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
