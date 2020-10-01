
import UIKit

class FifthViewController: UIViewController {
    
    var roseFifth: Flower?

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet var labelColor: UILabel!
    
    
    @IBOutlet weak var labelAmount: UILabel!
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        title = "5"
        
        labelName.text = roseFifth!.name
        
        labelColor.text = roseFifth!.color
        labelAmount.text = roseFifth!.amount

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    @IBAction func returnButtonpressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func returnTo1Pressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
