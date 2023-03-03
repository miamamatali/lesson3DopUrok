

import UIKit

class TableViewCell: UITableViewCell {
    
    static let reusID = String(describing: TableViewCell.self)
    
    @IBOutlet private weak var imagePerson: UIImageView!
    @IBOutlet private weak var lableName: UILabel!
    @IBOutlet private weak var lableDescription: UILabel!
    
    func display(item: Person) {
        imagePerson.image = UIImage(named: item.image)
        lableName.text = item.name
        lableDescription.text = item.description
    }
    
}
