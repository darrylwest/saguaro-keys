//
//  KeyModel.swift
//  SaguaroKeys
//
//  Created by darryl west on 7/19/15.
//  Copyright © 2015 darryl west. All rights reserved.
//

import Foundation

public enum KeyModelStatus: String {
    case Active, Inactive, Deleted
}

public protocol KeyModel {
    var doi:DocumentIdentifier { get }
    var url:String { get }
    var username:String { get }
    var password:String { get }
    var hint:String { get }
    var comment:String { get }
    var status:KeyModelStatus { get }
}

struct Key: KeyModel {
    let doi:DocumentIdentifier
    let url:String
    let username:String
    let password:String
    let hint:String
    let comment:String

    let status:KeyModelStatus

    init(doi:DocumentIdentifier, url:String, username:String, password:String, hint:String? = "", comment:String? = "", status:KeyModelStatus? = .Active) {
        self.doi = doi
        self.url = url
        self.username = username
        self.password = password

        self.hint = hint!
        self.comment = comment!
        self.status = status!
    }
}