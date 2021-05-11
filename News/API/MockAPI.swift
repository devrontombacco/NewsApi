//
//  MockAPI.swift
//  News
//
//  Created by Devron Tombacco on 26/04/2021.
//

import Foundation
import UIKit

class MockAPI: API {
    
    func getArticles() -> [Article] {

        var article = Article()
        article.id = "1234567890"
        article.title = "Lorem Ipsum Dolor Sit Amet"
        article.text = "Adaptogen tousled schlitz air plant, 8-bit wayfarers slow-carb. Poke wayfarers synth, keytar yuccie salvia YOLO banjo tacos schlitz put a bird on it."
        article.url = "https://learnappmaking.com/ex/lipsum.html"
        article.publisher = "Tuesday Times"
        article.author = "Reinder de Vries"
        article.image = "https://placeimg.com/1000/800/tech"
        
        return Array(repeating: article, count: 15)
        
       }

    func getArticles(_ completionHandler: @escaping () -> Void) {
        completionHandler()
    }
    
}
