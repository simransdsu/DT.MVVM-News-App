//
//  AppError.swift
//  MVVM News App
//
//  Created by Simran Preet Narang on 2022-06-21.
//

import Foundation

struct AppError: Error {
  let message: String?
  let description: String?
  
  init(message: String? = nil, description: String? = nil) {
    self.message = message
    self.description = description
    print("❌ \(String(describing: description))")
  }
}
