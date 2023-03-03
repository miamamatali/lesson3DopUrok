

import UIKit

class PErsonsViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    private var persons: [Person] = []

    
      override func viewDidLoad() {
        super.viewDidLoad()
          tableView.delegate = self
          tableView.dataSource = self
          tableView.register(UINib(nibName: TableViewCell.reusID, bundle: nil), forCellReuseIdentifier: TableViewCell.reusID)
    }
}

extension PErsonsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
extension PErsonsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reusID, for: indexPath) as! TableViewCell
        let model = persons [indexPath.row]
        cell.display(item: model)
        return cell
    }
    
    
}
