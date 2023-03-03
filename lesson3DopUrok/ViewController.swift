

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var selectYourRegion: UITextField!
    @IBOutlet private weak var email: UITextField!
    @IBOutlet private weak var password: UITextField!

    private var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signin(_ sender: Any) {
        
        if selectYourRegion.text?.isEmpty ?? true {
            selectYourRegion.layer.borderWidth = 2
            selectYourRegion.layer.borderColor = UIColor.red.cgColor
            selectYourRegion.placeholder = "Заполните!"
        } else {
            selectYourRegion.layer.borderWidth = 0
            selectYourRegion.layer.borderColor = UIColor.white.cgColor
            selectYourRegion.placeholder = ""
        }
        if email.text?.isEmpty ?? true {
            email.layer.borderWidth = 2
            email.layer.borderColor = UIColor.red.cgColor
            email.placeholder = "Заполните!"
        } else {
            email.layer.borderWidth = 0
            email.layer.borderColor = UIColor.white.cgColor
            email.placeholder = ""
        }
        if password.text?.isEmpty ?? true {
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.red.cgColor
            password.placeholder = "Заполните!"
        } else {
            password.layer.borderWidth = 0
            password.layer.borderColor = UIColor.white.cgColor
            password.placeholder = ""
            let tableView = TableViewController()
            let name = email?.text ?? ""
            let password = password?.text ?? ""
            tableView.name = String(describing: name)
            tableView.descript = String(describing: password)
            self.navigationController?.pushViewController(tableView, animated: true)
        }
    }
    
    @IBAction func createAccount(_ sender: Any) {
        if selectYourRegion.text?.isEmpty ?? true {
            selectYourRegion.layer.borderWidth = 2
            selectYourRegion.layer.borderColor = UIColor.red.cgColor
            selectYourRegion.placeholder = "Заполните!"
        } else {
            selectYourRegion.layer.borderWidth = 0
            selectYourRegion.layer.borderColor = UIColor.white.cgColor
            selectYourRegion.placeholder = ""
        }
        if email.text?.isEmpty ?? true {
        email.layer.borderWidth = 2
        email.layer.borderColor = UIColor.red.cgColor
        email.placeholder = "Заполните!"
        } else {
            email.layer.borderWidth = 0
            email.layer.borderColor = UIColor.white.cgColor
            email.placeholder = ""
        }
        if password.text?.isEmpty ?? true {
        password.layer.borderWidth = 2
        password.layer.borderColor = UIColor.red.cgColor
        password.placeholder = "Заполните!"
        } else {
            password.layer.borderWidth = 0
            password.layer.borderColor = UIColor.white.cgColor
            password.placeholder = ""
            let create = CreateAccountViewController()
            self.navigationController?.pushViewController(create, animated: true)
        }
    }
}

