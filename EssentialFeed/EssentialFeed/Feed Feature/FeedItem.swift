//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Stephen Davis on 2024-10-28.
//

import Foundation

public struct FeedItem: Equatable {
  let id: UUID
  let description: String?
  let location: String?
  let imageURL: URL
}
