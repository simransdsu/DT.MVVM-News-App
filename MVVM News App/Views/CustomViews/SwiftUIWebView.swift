//
//  SwiftUIWebView.swift
//  MVVM News App
//
//  Created by Simran Preet Narang on 2022-06-21.
//

import SwiftUI
import Foundation
import WebKit

struct SwiftUIWebView: UIViewRepresentable {
  
  var urlString: String
  
  func makeUIView(context: Context) -> WKWebView {
    guard let url = URL(string: urlString) else {
      return WKWebView()
    }
    
    let request = URLRequest(url: url)
    let webView = WKWebView()
    webView.load(request)
    return webView
  }
  
  func updateUIView(_ uiView: WKWebView, context: Context) {
    
  }
}
