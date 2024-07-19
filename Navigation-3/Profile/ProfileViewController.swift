import UIKit

class ProfileViewController: UIViewController {
    
    //Model
    let model = Model()
    
    //TableView
    lazy var tableView = {
        let table = UITableView(frame: self.view.bounds)
        table.delegate = self
        table.dataSource = self
        return table
    }()
    
    
    //Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        
        //Setup header section
        tableView.tableHeaderView = ProfileHeaderView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 200))
        
        //Registration custom cell
        tableView.register(PostCell.self, forCellReuseIdentifier: PostCell.identificator)
    }
}



extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    //Count rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.posts.count
    }
    
    //Create cell for row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.identificator, for: indexPath) as! PostCell
        let post = model.posts[indexPath.row]
        cell.configure(post)
        return cell
    }
}




//MARK: SwiftUI
import SwiftUI

struct ViewControllerProvider1: PreviewProvider {
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
