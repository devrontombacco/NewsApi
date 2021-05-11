//
//  Article.swift
//  News
//
//  Created by Devron Tombacco on 26/04/2021.
//

import Foundation

struct Article: Codable {
    
    var id: String = ""
    var url: String = ""
    var title: String = ""
    var text: String = ""
    var publisher: String = ""
    var author: String = ""
    var image: String = ""
    var date: Date = Date()

}
