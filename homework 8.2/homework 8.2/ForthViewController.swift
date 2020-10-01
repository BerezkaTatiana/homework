

import UIKit

class ForthViewController: UIViewController {

    var roseForth: Flower?
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "4"
    
    }
    

    @IBAction func buttonNextPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let viewController = storyboard.instantiateViewController(identifier: String(describing: FifthViewController.self)) as! FifthViewController
        viewController.roseFifth = roseForth!
           viewController.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}
