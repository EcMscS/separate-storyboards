//
//  MainVC.swift
//  Storyboards_In_Code
//
//  Created by Jeffrey Lai on 3/2/18.
//  Copyright © 2018 Talisman Mobile. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var nextViewButton: UIButton!
    
    var navMain: UINavigationController?
    
    static func storyboardInstance() -> MainVC? {
        //NOTE: Name of Class must be the same as the storyboardID
        let storyboard = UIStoryboard(name: String(describing: self), bundle: nil)
        return storyboard.instantiateInitialViewController() as? MainVC
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Initial View Controller for MainVC Storyboard : Notes need to change initial view controller storyboard name in info.plist
        _ = MainVC.storyboardInstance()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressedNextViewButton(_ sender: UIButton) {
        
        if let nextViewController = SecondVC.storyboardInstance() {
            //Initialize Class properties
            nextViewController.info = "MainVC passed on info"
            
            //Either push or present the nextViewController
            //Present
            //present(nextViewController, animated: true, completion: nil)
            presentDetailWithAction(viewControllerToPresent: nextViewController, transitionSubtype: kCATransitionFromRight)
            
            //Or Push - Navigation Controller Yet to work
            //navMain?.pushViewController(nextViewController, animated: true)
        }
    }
    



}
