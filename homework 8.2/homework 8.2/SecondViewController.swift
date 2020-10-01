
import UIKit

class SecondViewController: UIViewController {
    
    var roseSecond: Flower?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "2"
   
    }
    

    @IBAction func buttonNextPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let viewController = storyboard.instantiateViewController(identifier: String(describing: ThirdViewController.self)) as! ThirdViewController
        viewController.roseThird = roseSecond!
           viewController.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}
