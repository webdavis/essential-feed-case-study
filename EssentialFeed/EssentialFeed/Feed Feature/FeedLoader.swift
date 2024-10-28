//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Stephen Davis on 2024-10-28.
//

import Foundation

enum LoadFeedResult {
  case success([FeedItem])
  case error(Error)
}

protocol FeedLoader {
  func load(completion: @escaping (LoadFeedResult) -> Void)
}
