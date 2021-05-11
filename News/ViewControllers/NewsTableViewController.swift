//
//  NewsTableViewController.swift
//  News
//
//  Created by Devron Tombacco on 26/04/2021.
//

import UIKit

class NewsTableViewController: UITableViewController {

    // A reference to the API, that's used to get news articles
    var api: API

    
    // An array with articles, that are shown in the TBVC
    var articles = [Article]()
    
    required init?(coder: NSCoder) {
        api = NewsAPI()
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "News"
        api.getArticles {
            // Do nothing...
        }
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath) as! ArticleCell

        cell.configureCell(with: articles[indexPath.row])
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if  let detailVC = segue.destination as? NewsDetailViewController,
            let indexPath = tableView.indexPathForSelectedRow {

            detailVC.article = articles[indexPath.row]
        }
    }
}
