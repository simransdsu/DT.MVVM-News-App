  //
  //  TagView.swift
  //  MVVM News App
  //
  //  Created by Simran Preet Narang on 2022-06-21.
  //

import SwiftUI

struct TagView: View {
  
  private let colors: [Color] = [.indigo, .purple, .pink, .green, .blue, .blue, .cyan, .mint, .yellow, .teal]
  
  let title: String
  
  var body: some View {
    Text(title)
      .padding(8)
      .background(colors.randomElement())
      .foregroundColor(.white)
      .clipShape(RoundedRectangle(cornerRadius: 20))
  }
}

struct TagView_Previews: PreviewProvider {
  static var previews: some View {
    TagView(title: "John Doe")
  }
}
