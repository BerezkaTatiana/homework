

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myCircle: UIView!
    
    @IBOutlet weak var myVeiwForButton: UIView!
    
    @IBOutlet weak var myLabel: UILabel!
    let request = Request()
    
    enum DirectionMove {
        case right
        case left
        case up
        case down
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCircle.frame.size = CGSize(width: 100, height: 100)
        myCircle.layer.cornerRadius = 50
        myVeiwForButton.frame = CGRect(x: 0, y: view.frame.maxY - myVeiwForButton.frame.height, width: view.frame.width, height: 200)
        
        view.addSubview(myVeiwForButton)
        let rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(processSwipe(_:)))
        rightSwipeGesture.direction = .right
        view.addGestureRecognizer(rightSwipeGesture)
        
        let leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(processSwipe(_:)))
        leftSwipeGesture.direction = .left
        view.addGestureRecognizer(leftSwipeGesture)
        
        let upSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(processSwipe(_:)))
        upSwipeGesture.direction = .up
        view.addGestureRecognizer(upSwipeGesture)
        
        let downSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(processSwipe(_:)))
        downSwipeGesture.direction = .down
        view.addGestureRecognizer(downSwipeGesture)
        
        
    }
    @objc func processSwipe(_ swipeGesture: UISwipeGestureRecognizer) {
        switch swipeGesture.direction {
        case.right:
            if myCircle.frame.origin.x + 75 + myCircle.frame.width <=
                view.frame.width {
                myCircle.frame.origin.x += 75
                myLabel.text = "RIGHT"
            } else {
                myLabel.text = "Error"
            }
        case.left:
            if myCircle.frame.origin.x - 75 >=
                view.frame.minX {
                myCircle.frame.origin.x -= 75
                myLabel.text = "LEFT"
            } else {
                myLabel.text = "Error"
            }
        case.up:
            if myCircle.frame.origin.y - 75 >=
                view.frame.minY + 62 {
                myCircle.frame.origin.y -= 75
                myLabel.text = "UP"
            } else {
                myLabel.text = "Error"
            }
        case.down:
            if myCircle.frame.origin.y + 75 + myCircle.frame.height <=
                view.frame.height - myVeiwForButton.frame.height + 62 {
                myCircle.frame.origin.y += 75
                myLabel.text = "DOWN"
            } else {
                myLabel.text = "Error"
            }
        default:
            print("")
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        myCircle.center.x = view.frame.width / 2
        myCircle.center.y = (view.frame.height - myVeiwForButton.frame.height) / 2
        
        
    }
    
    
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func leftButtontapped(_ sender: Any) {
        
        //        if myCircle.frame.origin.x - 10 >=
        //                  view.frame.minX {
        //                myCircle.frame.origin.x -= 10
        
        moveView(direction: DirectionMove.left)
        
    }
    
    @IBAction func upButtonTapped(_ sender: Any) {
        
        //        if myCircle.frame.origin.y - 10 >=
        //        view.frame.minY + 20 {
        //            myCircle.frame.origin.y -= 10
        //        }
        moveView(direction: .up)
    }
    
    
    @IBAction func downButtonTapped(_ sender: Any) {
        
        //        if myCircle.frame.origin.y + 10 + myCircle.frame.height <=
        //        view.frame.height - myVeiwForButton.frame.height {
        //            myCircle.frame.origin.y += 10
        //        }
        moveView(direction: DirectionMove.down)
        
    }
    
    @IBAction func rightButtonTapped(_ sender: Any) {
        
        //        if myCircle.frame.origin.x + 10 + myCircle.frame.width <=
        //                  view.frame.width {
        //                myCircle.frame.origin.x += 10
        //        }
        moveView(direction: DirectionMove.right)
    }
    
    func moveView (direction: DirectionMove) {
        switch direction {
        case .right:
            if myCircle.frame.origin.x + 10 + myCircle.frame.width <=
                view.frame.width {
                myCircle.frame.origin.x += 10
                myLabel.text = "RIGHT"
            } else {
                myLabel.text = "Error"
            }
        case .left:
            if myCircle.frame.origin.x - 10 >=
                view.frame.minX {
                myCircle.frame.origin.x -= 10
                myLabel.text = "LEFT"
            } else {
                myLabel.text = "Error"
            }
        case .up:
            if myCircle.frame.origin.y - 10 >=
                view.frame.minY + 62 {
                myCircle.frame.origin.y -= 10
                myLabel.text = "UP"
            } else {
                myLabel.text = "Error"
            }
        case .down:
            if myCircle.frame.origin.y + 10 + myCircle.frame.height <=
                view.frame.height - myVeiwForButton.frame.height + 62 {
                myCircle.frame.origin.y += 10
                myLabel.text = "DOWN"
            } else {
                myLabel.text = "Error"
                
            }
            
        }
    }
}



