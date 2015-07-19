//
//  Unique.swift
//  SaguaroKeys
//
//  Created by darryl west on 7/19/15.
//  Copyright © 2015 darryl west. All rights reserved.
//

import Foundation

public struct Unique {
    static public func createUUID() -> String {
        let uuid = NSUUID()

        return uuid.UUIDString.lowercaseString
    }

    static public func createModelId() -> String {
        let uuid = NSUUID().UUIDString.lowercaseString
        let mid = uuid.stringByReplacingOccurrencesOfString("-", withString:"")

        return mid
    }
}
