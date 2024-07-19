//
//  Post.swift
//  Navigation-3
//
//  Created by Артем Леонов on 19.07.24.
//

import Foundation

struct Post {
    let author: String          // никнейм автора публикации
    let description: String    // текст публикации
    let image: String          // имя картинки из каталога
    let likes: Int             // количество лайков
    let views: Int            // количество просмотров
}

class Model {
    var posts = [
        Post(author: "Tom", description: "Error: this application, or a library", image: "imgOne", likes: 0, views: 100),
        Post(author: "BBC news", description: "If you want to see the backtrace, please set CG_NUMERICS_SHOW_BACKTRACE environmental var", image: "imgTwo", likes: 23, views: 49),
        Post(author: "Pupa", description: "not-a-number) to CoreGraphics API and this v", image: "imgThree", likes: 10000, views: 111111),
        Post(author: "Erlih Bahmann", description: "Will attempt to recover by breaking constraint ", image: "imgFour", likes: 250000, views: 1000000),
    ]
}
