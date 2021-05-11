//
//  ArticleCell.swift
//  News
//
//  Created by Devron Tombacco on 27/04/2021.
//

import UIKit

class ArticleCell: UITableViewCell {

    @IBOutlet weak var titleLabel:UILabel?
    @IBOutlet weak var subtitleLabel:UILabel?

    func commonInit() {
        titleLabel?.text = ""
        subtitleLabel?.text = ""
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        commonInit()
    }

    override func prepareForReuse()
    {
        super.prepareForReuse()
        commonInit()
    }
    
    func configureCell(with article: Article){
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        
        titleLabel?.text = article.title
        subtitleLabel?.text = "\(formatter.string(from: article.date)) · \(article.author)"
    }
    
}
