
import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Создание кнопки
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 40))
        button.setTitle("Показать информацию", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(showInfoAlert), for: .touchUpInside)
        view.addSubview(button)
    }

    // Отображение UIAlertController
    @objc func showInfoAlert() {
        let alert = UIAlertController(title: "Информация о посте", message: "Это пример сообщения", preferredStyle: .alert)

        // Добавление действий
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel))
        alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
            print("Нажата кнопка OK")
        })

        // Отображение UIAlertController
        present(alert, animated: true)
    }
}
    


