//
//  PostCellTableViewCell.swift
//  Navigation-3
//
//  Created by Артем Леонов on 19.07.24.
//

import UIKit

class PostCell: UITableViewCell {
    
    // никнейм автора публикации
    let author = {
        let author = UILabel()
        author.font = .systemFont(ofSize: 20, weight: .bold)
        author.numberOfLines = 2
        return author
    }()
    
    // текст публикации
    let descriptionPost = {
        let descriptionPost = UILabel()
        descriptionPost.font = .systemFont(ofSize: 14, weight: .regular)
        descriptionPost.textColor = .systemGray
        descriptionPost.numberOfLines = 0
        return descriptionPost
    }()
    
    // имя картинки из каталога
    let image = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .black
        return image
    }()
    
    // количество лайков
    let likes = {
        let likes = UILabel()
        likes.font = .systemFont(ofSize: 16, weight: .regular)
        return likes
    }()
    
    // количество просмотров
    let views = {
        let views = UILabel()
        views.font = .systemFont(ofSize: 16, weight: .regular)
        return views
    }()
    
    //Stack
    lazy var stack = {
        let stack = UIStackView(arrangedSubviews: [likes, views])
        stack.axis = .horizontal
        return stack
    }()
    
    
    
    //Initialization
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //AutoLayout
    func layout(){
        author.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        descriptionPost.translatesAutoresizingMaskIntoConstraints = false
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(author)
        contentView.addSubview(image)
        contentView.addSubview(descriptionPost)
        contentView.addSubview(stack)
        
        NSLayoutConstraint.activate([
            author.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            author.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            
            image.topAnchor.constraint(equalTo: author.bottomAnchor, constant: 12),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            image.heightAnchor.constraint(equalToConstant: 200),
            
            descriptionPost.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16),
            descriptionPost.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            descriptionPost.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            stack.topAnchor.constraint(equalTo: descriptionPost.bottomAnchor, constant: 16),
            stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ])
    }
    
    //Configurre
    func configure(_ post: Post){
        author.text = post.author
        image.image = UIImage(named: post.image)
        descriptionPost.text = post.description
        likes.text = "Likes: \(post.likes)"
        views.text = "Views: \(post.views)"
    }
}





//Cell identificator
extension PostCell {
    static let identificator = PostCell.description()
}









//MARK: SwiftUI
import SwiftUI

struct ViewControllerProvider2: PreviewProvider {
    static var previews: some View {
        ContainerView().ignoresSafeArea()
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let viewController = ProfileViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
