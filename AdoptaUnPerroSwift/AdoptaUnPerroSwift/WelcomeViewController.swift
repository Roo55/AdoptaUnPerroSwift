//
//  WelcomeViewController.swift
//  AdoptaUnPerroSwift
//
//  Created by Administrador on 7/6/24.
//

import UIKit

class WelcomeViewController: UIViewController {

    
   
    @IBOutlet weak var logoAdoptADog: UIImageView!
    @IBOutlet weak var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func passToHomeView(_ sender: UIButton) {
        performSegue(withIdentifier: "showHome", sender: nil)
    }
    
}
