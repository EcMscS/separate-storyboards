//
//  FourthVC.swift
//  Storyboards_In_Code
//
//  Created by Jeffrey Lai on 3/13/18.
//  Copyright © 2018 Talisman Mobile. All rights reserved.
//


import UIKit

//This Example uses the Storyboardable extension instead of creating of createing a static function of a storyboard instance in each class
class FourthVC: UIViewController {

    
    @IBOutlet weak var backButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    


}
