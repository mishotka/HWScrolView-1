
import UIKit

class PostViewController: UIViewController {
    init(title: String) {
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func infoButtonTapped() {
        let alert = UIAlertController(title: "Информация о посте", message: "Это пример сообщения", preferredStyle: .alert)

           // Добавление действий
           alert.addAction(UIAlertAction(title: "Отмена", style: .cancel))
           alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
               print("Нажата кнопка OK")
           })

           // Отображение UIAlertController
           present(alert, animated: true)
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        
        let infoButton = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(infoButtonTapped))
        navigationItem.rightBarButtonItem = infoButton
    }
    

}//class end
