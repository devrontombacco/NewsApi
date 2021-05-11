//
//  API.swift
//  News
//
//  Created by Devron Tombacco on 26/04/2021.
//

import Foundation

protocol API {
    
    func getArticles() -> [Article]
    func getArticles(_ completionHandler: @escaping () -> Void)
}
