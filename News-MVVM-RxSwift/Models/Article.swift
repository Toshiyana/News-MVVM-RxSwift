//
//  Article.swift
//  News-MVVM-RxSwift
//
//  Created by Toshiyana on 2021/12/10.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article] // "articles" is json key
}

extension ArticleList {
    static var all: Resource<ArticleList> = {
        let url = URL(string: "https://newsapi.org/v2/everything?q=Apple&from=2021-12-06&sortBy=popularity&apiKey=06b76736facf4432bcfd15d554f2cb08")!
        return Resource(url: url)
    }()
}

struct Article: Decodable {
    let title: String
    let description: String?
}
