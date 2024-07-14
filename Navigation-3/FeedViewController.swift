

import UIKit

class FeedViewController: UIViewController {

    private var stackView: UIStackView!
    private let distribution: UIStackView.Distribution = .fillProportionally

    override func viewDidLoad() {
        super.viewDidLoad()

        // Создание UIStackView
        stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = distribution

        // Добавление stackView в представление
        view.addSubview(stackView)

        // Центрирование stackView
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        // Создание кнопок
        let button1 = UIButton(type: .system)
        button1.setTitle("Кнопка 1", for: .normal)
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button1.backgroundColor = .lightGray
        button1.setTitleColor(.black, for: .normal)
        button1.layer.cornerRadius = 10
        button1.addTarget(self, action: #selector(button1Tapped), for: .touchUpInside)

        let button2 = UIButton(type: .system)
        button2.setTitle("Кнопка 2", for: .normal)
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button2.backgroundColor = .lightGray
        button2.setTitleColor(.black, for: .normal)
        button2.layer.cornerRadius = 10
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)

        // Добавление кнопок в stackView
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
    }

    @objc func button1Tapped() {
        let postViewController = PostViewController(title: "Кнопка 1")
        navigationController?.pushViewController(postViewController, animated: true)
    }

    @objc func button2Tapped() {
        let postViewController = PostViewController(title: "Кнопка 2")
        navigationController?.pushViewController(postViewController, animated: true)
    }
}

//struct Post{
//    let titlePost: String
//}
//
//class FeedViewController: UIViewController {
//    let button = UIButton()
//    let postTitle = Post(titlePost: "My Post")
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureButton()
//    }
//    
//    func configureButton(){
//        button.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
//        button.setTitle("Post", for: .normal)
//        button.center = view.center
//        button.backgroundColor = .darkGray
//        button.layer.cornerRadius = 10
//        button.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
//        view.addSubview(button)
//        
//    }
//    @objc func touchButton(){
//        navigationController?.pushViewController(PostViewController(title: postTitle.titlePost), animated: true)
//    }
//} // Class
