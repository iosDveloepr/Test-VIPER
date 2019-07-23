//
//  News.swift
//  VIPER Test
//
//  Created by Anton Yermakov on 7/23/19.
//  Copyright © 2019 Anton Yermakov. All rights reserved.
//

import Foundation

struct News: Decodable {
    
    let author: String?
    let description: String?
    let publishedAt: String?
    let title: String?
    let url: String?
    let urlToImage: String?
    
}

struct ArrayNews: Decodable{
    var articles: [News]
}
