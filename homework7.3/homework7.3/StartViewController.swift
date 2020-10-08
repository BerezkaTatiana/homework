

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var headerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let backButton = UIBarButtonItem()
            backButton.title = ""
            navigationItem.backBarButtonItem = backButton
       
    }
    

    @IBAction func playButtonPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self)) as! ViewController
        navigationController?.pushViewController(viewController, animated: true)

    }
    

}
