//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Stephen Davis on 2024-10-28.
//

import Foundation

public struct FeedItem: Equatable {
  public let id: UUID
  public let description: String?
  public let location: String?
  public let imageURL: URL
  
  public init(id: UUID, description: String?, location: String?, imageURL: URL) {
    self.id = id
    self.description = description
    self.location = location
    self.imageURL = imageURL
  }
}
