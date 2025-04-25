//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Stephen Davis on 2024-10-28.
//

import Foundation

public enum LoadFeedResult {
  case success([FeedItem])
  case failure(Error)
}

public protocol FeedLoader {
  func load(completion: @escaping (LoadFeedResult) -> Void)
}
