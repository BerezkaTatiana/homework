//
//  ViewController.swift
//  circle.PanGesture
//
//  Created by Татьяна Березка on 10/4/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func startButtonPressed(_ sender: Any) {
        
        let storyboard  = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: String(describing: SecondViewController.self)) as! SecondViewController
        viewController.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}

