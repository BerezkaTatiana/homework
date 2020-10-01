//
//  ViewController.swift
//  homework 8.2
//
//  Created by Татьяна Березка on 9/23/20.
//  Copyright © 2020 Татьяна Березка. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   let rose = Flower(name: "Roses", color: "Pink", amount: "25")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "1"
      
    }

    @IBAction func buttonNextPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
          let viewController = storyboard.instantiateViewController(identifier: String(describing: SecondViewController.self)) as! SecondViewController
        viewController.roseSecond = rose
          viewController.modalPresentationStyle = .fullScreen
          
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}

