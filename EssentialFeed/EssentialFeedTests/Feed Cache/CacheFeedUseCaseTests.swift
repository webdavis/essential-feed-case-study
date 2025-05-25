//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Stephen Davis on 2025-05-24.
//

import XCTest

class LocalFeedLoader {
  init(store: FeedStore) {
    
  }
}

class FeedStore {
  var deleteCachedFeedCallCount = 0
}

class CacheFeedUseCaseTests: XCTestCase {
  
  func test_init_doesNotDeleteCacheUponCreation() {
    let store = FeedStore()
    let _ = LocalFeedLoader(store: store)
    
    XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
  }
  
}
