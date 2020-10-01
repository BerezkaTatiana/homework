


import UIKit

class ThirdViewController: UIViewController {

    var roseThird: Flower?
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "3"
     
    }
    

  
    @IBAction func buttonNextPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let viewController = storyboard.instantiateViewController(identifier: String(describing: ForthViewController.self)) as! ForthViewController
        viewController.roseForth = roseThird!
           viewController.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}
