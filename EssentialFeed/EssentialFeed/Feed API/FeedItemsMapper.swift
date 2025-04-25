//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Stephen Davis on 2025-04-25.
//

import Foundation

internal final class FeedItemsMapper {
  private struct Root: Decodable {
    let items: [Item]
  }
  
  private struct Item: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
    
    var item: FeedItem {
      FeedItem(id: id, description: description, location: location, imageURL: image)
    }
  }
  
  private static let OK_200: Int = 200
  
  internal static func map(_ data: Data, _ response: HTTPURLResponse) throws -> [FeedItem] {
    guard response.statusCode == OK_200 else {
      throw RemoteFeedLoader.Error.invalidData
    }
    
    let root = try JSONDecoder().decode(Root.self, from: data)
    return root.items.map { $0.item }
  }
}
