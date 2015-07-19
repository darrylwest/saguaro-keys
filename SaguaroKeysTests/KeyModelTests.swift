//
//  KeyModelTests.swift
//  SaguaroKeys
//
//  Created by darryl west on 7/19/15.
//  Copyright © 2015 darryl west. All rights reserved.
//

import XCTest
@testable import SaguaroKeys

class KeyModelTests: XCTestCase {

    func testInstance() {
        let doi = DocumentIdentifier()
        let key = Key(doi:doi, url:"http://google.com", username:"dpw@gmail.com", password:"secret!")

        XCTAssertEqual(key.doi, doi, "doi match")
        XCTAssertEqual(key.url, "http://google.com")
        XCTAssertEqual(key.username, "dpw@gmail.com")
        XCTAssertEqual(key.password, "secret!")

        XCTAssertEqual(key.hint, "")
        XCTAssertEqual(key.comment, "")
        XCTAssertEqual(key.status, .Active)
        
    }

    
}
