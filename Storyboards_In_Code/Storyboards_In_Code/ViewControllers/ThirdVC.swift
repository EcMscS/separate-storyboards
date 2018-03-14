//
//  ThirdVC.swift
//  Storyboards_In_Code
//
//  Created by Jeffrey Lai on 3/7/18.
//  Copyright © 2018 Talisman Mobile. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    static func storyboardInstance() -> ThirdVC? {
        //NOTE: Name of Class must be the same as the storyboardID
        let storyboard = UIStoryboard(name: String(describing:self), bundle: nil)
        return storyboard.instantiateViewController(withIdentifier:String(describing:self)) as? ThirdVC
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BackButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextViewControllerButtonPressed(_ sender: UIButton) {
        //Use of Storyable Extension
        let fourthVC = FourthVC.storyboardViewController()
        present(fourthVC, animated: true, completion: nil)
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
