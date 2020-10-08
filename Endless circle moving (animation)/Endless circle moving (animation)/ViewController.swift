//
//  ViewController.swift
//  Endless circle moving (animation)
//
//  Created by Татьяна Березка on 10/4/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rectangleView: UIView!
    
    @IBOutlet weak var circleView: UIView!
    enum Direction {
        case up, down
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleView.frame.size = CGSize(width: 100, height: 100)
        circleView.layer.cornerRadius = 50
        rectangleView.frame = CGRect(x: 20, y: 20, width: 375, height: 614)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        circleView.center.x = rectangleView.frame.width / 2
        circleView.center.y = rectangleView.frame.height - 50
    }
    func animateCircle(direction: Direction, completion: @escaping() -> ()) {
        UIView.animate(withDuration: 2, delay: 0, options: [.curveLinear, .autoreverse, .repeat], animations: {
//            self.circleView.center.y = 50
            switch direction {
            case.up:
                self.circleView.center.y = 50
            case.down:
                self.circleView.center.y = self.rectangleView.frame.height - 50
            }
        }) { (_) in
            completion ()
        }
    }
    
    @IBAction func animateButtonPressed(_ sender: Any) {
        animateCircle(direction: .up) {
//            self.animateCircle(direction: .down) {
//            }
        }
      
    }
    
}

