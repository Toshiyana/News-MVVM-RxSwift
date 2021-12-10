//
//  ArticleTableViewCell.swift
//  News-MVVM-RxSwift
//
//  Created by Toshiyana on 2021/12/11.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    static let identifier = "ArticleTableViewCell"
    
    static func nib() -> UINib {
        UINib(nibName: "ArticleTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
        
}
