//
//  NewsApi.swift
//  News
//
//  Created by Devron Tombacco on 10/05/2021.
//

import Foundation
import RealmSwift

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
            
            let realm = try! Realm()
            realm.beginWrite()
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                for article in response.articles {
                    realm.add(article, update: .modified)
                }
                
            } catch {
                print("*** JSON ERROR *** \(error.localizedDescription)")
                return
            }
            
            do {
                try realm.commitWrite()
            } catch (let error) {
                print("Y U NO REALM ? \(error)")
            }
            
            DispatchQueue.main.async {
                completionHandler()
            }
            
        }
        task.resume()
    }
    
}

