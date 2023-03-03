

import UIKit

class CreateAccountViewController: UIViewController {
    
    static let id = String(describing: CreateAccountViewController.self)
    
    @IBOutlet private weak var textFieldRegion: UITextField!
    @IBOutlet private weak var textFieldName: UITextField!
    @IBOutlet private weak var textFieldLastName: UITextField!
    @IBOutlet private weak var textFieldORganization: UITextField!
    @IBOutlet private weak var textFieldEmail: UITextField!
    @IBOutlet private weak var textFieldYourTitle: UITextField!
    @IBOutlet private weak var textFieldPhone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func button(_ sender: Any) {
        if textFieldRegion.text?.isEmpty ?? true {
            textFieldRegion.layer.borderWidth = 2
            textFieldRegion.layer.borderColor = UIColor.red.cgColor
            textFieldRegion.placeholder = "Заполните!"
        } else {
            textFieldRegion.layer.borderWidth = 0
            textFieldRegion.layer.borderColor = UIColor.white.cgColor
            textFieldRegion.placeholder = "Кайф!"
        }
        
        if textFieldName.text?.isEmpty ?? true {
            textFieldName.layer.borderWidth = 2
            textFieldName.layer.borderColor = UIColor.red.cgColor
            textFieldName.placeholder = "Заполните!"
        } else {
            textFieldName.layer.borderWidth = 0
            textFieldName.layer.borderColor = UIColor.white.cgColor
            textFieldName.placeholder = "Кайф!"
        }
        
        if textFieldORganization.text?.isEmpty ?? true {
            textFieldORganization.layer.borderWidth = 2
            textFieldORganization.layer.borderColor = UIColor.red.cgColor
            textFieldORganization.placeholder = "Заполните!"
        } else {
            textFieldORganization.layer.borderWidth = 0
            textFieldORganization.layer.borderColor = UIColor.white.cgColor
            textFieldORganization.placeholder = "Кайф!"
        }
        if textFieldEmail.text?.isEmpty ?? true {
        textFieldEmail.layer.borderWidth = 2
        textFieldEmail.layer.borderColor = UIColor.red.cgColor
        textFieldEmail.placeholder = "Заполните!"
        } else {
            textFieldEmail.layer.borderWidth = 0
            textFieldEmail.layer.borderColor = UIColor.white.cgColor
            textFieldEmail.placeholder = "Кайф!"
        }
        if textFieldRegion.text?.isEmpty == false &&
            textFieldName.text?.isEmpty == false &&
            textFieldORganization.text?.isEmpty == false &&
            textFieldEmail.text?.isEmpty == false &&
            textFieldLastName.text?.isEmpty == false &&
            textFieldPhone.text?.isEmpty == false &&
            textFieldYourTitle.text?.isEmpty == false {
            let table = TableViewController()
            let names = textFieldName?.text ?? "em"
            let descript = textFieldLastName?.text ?? "empty"
            table.name = String(describing: names)
            table.descript = String(describing: descript)
            self.navigationController?.pushViewController(table, animated: true)
        }
        
    }
    }
    
