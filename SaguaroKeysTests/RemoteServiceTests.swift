//
//  RemoteServiceTests.swift
//  SaguaroKeys
//
//  Created by darryl west on 7/20/15.
//  Copyright © 2015 darryl west. All rights reserved.
//

import XCTest
@testable import SaguaroKeys

class RemoteServiceTests: XCTestCase {
    
    func testInstance() {
        let service = RemoteService(serviceName: "TestService")

        XCTAssertNotNil(service, "should not be nil")
        XCTAssertEqual(service.serviceName, "TestService", "name check")
    }
}
