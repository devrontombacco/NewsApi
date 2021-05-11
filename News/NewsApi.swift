//
//  NewsApi.swift
//  News
//
//  Created by Devron Tombacco on 10/05/2021.
//

import Foundation

class NewsAPI: API{
    
    let secret = URLQueryItem(name: "secret", value: "CHWGk3OTwgObtQxGqdLvVhwji6FsYm95oe87o3ju")
    
    func getArticles() -> [Article] {
        return [Article]()
    }
    
    func getArticles(_ completionHandler: @escaping () -> Void) {
        
        var urlComponents = URLComponents(string: "https://learnappmaking.com/ex/news/articles/iPhone")!
        urlComponents.queryItems = [secret]
        
        let task = URLSession.shared.dataTask(with: urlComponents.url!) { data, response, error in

            if error != nil {
                print("*** ERROR *** \(error!.localizedDescription)")
                return
            }
            
            if data == nil || response == nil {
                print("*** SOMETHING WENT WRONG!!! ***")
                return
            }
            
            if let json = try? JSONSerialization.jsonObject(with: data!, options: []) {
                print(json)
            }
            
            
            
            
        }
        task.resume()
    }
    
}

