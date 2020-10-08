//
//  SecondViewController.swift
//  circle.PanGesture
//
//  Created by Татьяна Березка on 10/4/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var buttonView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonView.frame.size = CGSize(width: 100, height: 100)
        buttonView.layer.cornerRadius = 50
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        buttonView.center.x = view.frame.width/2
        buttonView.center.y = view.frame.height/2
    
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let panGestureRecogniser = UIPanGestureRecognizer(target: self, action: #selector(processPan(_:)))
        view.addGestureRecognizer(panGestureRecogniser)
    }
    @objc func processPan(_ panGesture: UIPanGestureRecognizer) {
        panGesture.translation(in: view)
        let center = panGesture.location(in: view)
        buttonView.center = center
    }
    

}



