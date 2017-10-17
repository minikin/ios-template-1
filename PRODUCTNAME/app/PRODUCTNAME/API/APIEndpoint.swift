//
//  APIEndpoint.swift
//  PRODUCTNAME
//
//  Created by LEADDEVELOPER on 11/1/16.
//  Copyright © 2017 ORGANIZATION. All rights reserved.
//

import Alamofire
import Marshal

protocol APIEndpoint: NetworkLoggable {
    associatedtype ResponseType

    var path: String { get }
    typealias QueryParam = (String, String)
    var queryParams: [QueryParam]? { get }
    var method: HTTPMethod { get }
    var encoding: ParameterEncoding { get }
    var parameters: JSONObject? { get }
    var headers: HTTPHeaders { get }
}

extension APIEndpoint {

    var encoding: ParameterEncoding {
        return JSONEncoding.default
    }

    var parameters: JSONObject? {
        return nil
    }

    var queryParams: [QueryParam]? {
        return nil
    }

    var headers: HTTPHeaders {
        return [:]
    }

}
