//
//  KeyDataServiceTests.swift
//  SaguaroKeys
//
//  Created by darryl west on 7/19/15.
//  Copyright © 2015 darryl west. All rights reserved.
//

import XCTest
import SaguaroConnect
@testable import SaguaroKeys

class KeyDataServiceTests: XCTestCase {
    let timeout = NSTimeInterval( 2.0 )
    let expectationName = "keyDataServiceComplete"
    
    func testInstance() {
        let service = KeyDataService()

        XCTAssertNotNil(service, "service should not be nil")
    }

    func testQuery() {
        let expectation = expectationWithDescription( expectationName )
        let service = KeyDataService()

        func callback(response: SAResponseCallback<[KeyModel], NSError>) -> Void {
            print("response: \( response )")

            switch response {
            case .Ok( let keyList ):
                print("good news: \( keyList )")
                // XCTAssert( keyList.count >= 2, "should be a minimum length")

            case .Fail( let err ):
                print("bad news should fail: \( err )")
                XCTFail("response failed: \( err )")
            }

            expectation.fulfill()
        }

        let request = SAQueryRequest(params:["mything":"myvalue"])

        service.query( request, callback: callback )

        waitForExpectationsWithTimeout(timeout, handler: { error in
            XCTAssertNil(error, "async error: \( error )")
        });
    }

    
}
