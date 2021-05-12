//
//  Article.swift
//  News
//
//  Created by Devron Tombacco on 26/04/2021.
//

import Foundation
import RealmSwift

class Article: Object, Codable {
    
    @objc dynamic var id: String = ""
    @objc dynamic var url: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var publisher: String = ""
    @objc dynamic var author: String = ""
    @objc dynamic var image: String = ""
    @objc dynamic var date: Date = Date()

}
