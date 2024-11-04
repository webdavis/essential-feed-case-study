//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Stephen Davis on 2024-11-04.
//

import XCTest

class RemoteFeedLoader {
  
}

class HTTPClient {
  var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {

  func test_init_doesNotRequestDataFromURL() {
    let client = HTTPClient()
    _ = RemoteFeedLoader()
    
    XCTAssertNil(client.requestedURL)
  }
}
