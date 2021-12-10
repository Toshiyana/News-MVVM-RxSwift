//
//  URLRequest+Extensions.swift
//  News-MVVM-RxSwift
//
//  Created by Toshiyana on 2021/12/10.
//

import Foundation
import RxSwift
import RxCocoa

// The reson that we create a generic type is that sometimes we may be fetching news from the NewsAPI,
// but some other time we will be fetching like resources from the NewsAPI
// which have a different JSON class or structure.

struct Resource<T: Decodable> {
    let url: URL
}

// You can use Observable.just() or Observable.from()
extension URLRequest {
    
    static func load<T>(resource: Resource<T>) -> Observable<T> {
        
        return Observable.just(resource.url)
            .flatMap { url -> Observable<Data> in
                let request = URLRequest(url: url)
                return URLSession.shared.rx.data(request: request)
            }.map { data -> T in
                return try JSONDecoder().decode(T.self, from: data)
            }
    }
    
}
