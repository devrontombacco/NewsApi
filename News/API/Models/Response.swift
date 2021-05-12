//
//  Response.swift
//  News
//
//  Created by Devron Tombacco on 11/05/2021.
//

import Foundation

struct Response: Codable {
    
    var count: Int = 0
    var urls: [String: String] = [String: String]()
    var articles:[Article] = [Article]()
    
}
