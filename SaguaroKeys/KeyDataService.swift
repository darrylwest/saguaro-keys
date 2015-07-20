//
//  KeyDataSource.swift
//  SaguaroKeys
//
//  Created by darryl west on 7/19/15.
//  Copyright © 2015 darryl west. All rights reserved.
//

import Foundation
import SaguaroConnect

public class KeyDataService: SARemoteService {

    public init() {
        super.init(serviceName: "KeyDataService")
    }

    public func query(queryRequest:SAQueryRequest, callback:(SAResponseCallback<[KeyModel], NSError>) -> Void) {

        let keyList:[KeyModel] = [KeyModel]()

        // keyList.append(Key()

        callback( .Ok( keyList ) )
        // TODO : query in the background and invoke the callback
        // callback( .Fail( super.createError( .NoInternetConnection, request: queryRequest )))
    }
}