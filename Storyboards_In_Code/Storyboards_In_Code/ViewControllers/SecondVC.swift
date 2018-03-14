//
//  SecondVC.swift
//  Storyboards_In_Code
//
//  Created by Jeffrey Lai on 3/2/18.
//  Copyright © 2018 Talisman Mobile. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    
    var info: String = ""
    
    static func storyboardInstance() -> SecondVC? {
        //NOTE: Name of Class must be the same as the storyboardID
        let storyboard = UIStoryboard(name: String(describing: self), bundle: nil)
        return storyboard.instantiateViewController(withIdentifier:String(describing: self)) as? SecondVC
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.infoLabel.text = info
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        //self.dismiss(animated: true, completion: nil)
        dismissDetailWithAction(transitionSubtype: kCATransitionFromLeft)
    }
    
    @IBAction func ThirdViewButtonPressed(_ sender: UIButton) {
        if let thirdViewController = ThirdVC.storyboardInstance() {
            present(thirdViewController, animated: true, completion: nil)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
