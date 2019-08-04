import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataLbl: UILabel!
    @IBOutlet weak var dataTextField: UITextField!
    
    var keyValStore = NSUbiquitousKeyValueStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveBtn(_ sender: Any) {
        
        let data = dataTextField.text
        
        keyValStore.set(data, forKey: "data")
        keyValStore.synchronize()
        
    }
    
    @IBAction func loadBtn(_ sender: Any) {
        
        let newData = keyValStore.string(forKey: "data")
        
        dataLbl.text = newData
        
    }
    
}

