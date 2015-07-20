//
//  AbstractRemoteService.swift
//  SaguaroKeys
//
//  Created by darryl west on 7/19/15.
//  Copyright © 2015 darryl west. All rights reserved.
//

import Foundation
import SaguaroLogger
import SaguaroConnect

public struct ServiceErrors {
    static let NoInternetConnection = SAErrorType(code: 100, message: "Internet connection is currently unavailable")
    static let ServerError  = SAErrorType(code: 101, message: "Server error:")
    static let AuthenticationFailed = SAErrorType(code: 110, message: "Authentication failed")
    static let InvalidSession = SAErrorType(code: 111, message: "Invalid Session")
    static let QueryFailed = SAErrorType(code: 112, message: "Query failed")
    static let JSONParseError = SAErrorType(code: 120, message: "JSON Parser Error")
    static let UnknownError = SAErrorType(code: 999, message: "Unkonwn Service Error")
}
