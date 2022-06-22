  //
  //  AuthorSourceTagView.swift
  //  MVVM News App
  //
  //  Created by Simran Preet Narang on 2022-06-21.
  //

import SwiftUI

struct AuthorSourceTagView: View {
  
  let author: String
  let source: String
  
  
  var body: some View {
    HStack {
      TagView(title: author)
      
      if !source.isEmpty {
        TagView(title: source)
      }
    }
    .lineLimit(1)
  }
}

struct AuthorSourceTagView_Previews: PreviewProvider {
  static var previews: some View {
    AuthorSourceTagView(author: "Author", source: "Source")
  }
}
