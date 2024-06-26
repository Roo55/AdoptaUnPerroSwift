//
//  DetailDogViewController.swift
//  AdoptaUnPerroSwift
//
//  Created by Administrador on 7/6/24.
//

import UIKit

class DetailDogViewController: UIViewController {
    
    
    
    @IBOutlet weak var detailDogName: UILabel!
    @IBOutlet weak var detailDogAge: UILabel!
    @IBOutlet weak var detailDogBreed: UILabel!
    @IBOutlet weak var detailDogSize: UILabel!
    @IBOutlet weak var detailDogImage: UIImageView!
    @IBOutlet weak var detailDogDescription: UITextView!
    @IBOutlet weak var detailDogWannaAdopt: UILabel!
    @IBOutlet weak var detailDogMoreInformationButton: UIButton!
    
    var mainDogName: String?
    var mainDogAge: String?
    var mainDogBreed: String?
    var mainDogSize: String?
    var mainDogImage: UIImage?
    var mainDogDescription: String?
    var mainDogWannaAdopt: String?
    var mainDogMoreInformationButton: UIButton?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.detailDogName!.text = mainDogName
        self.detailDogAge!.text = mainDogAge
        self.detailDogBreed!.text = mainDogBreed
        self.detailDogSize!.text = mainDogSize
        self.detailDogImage!.image = mainDogImage
        self.detailDogDescription!.text = mainDogDescription
        self.detailDogWannaAdopt!.text = mainDogWannaAdopt
        self.detailDogMoreInformationButton = mainDogMoreInformationButton
        
        
    }
    
    
    @IBAction func requestMoreInformationButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowFormSegue", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ShowFormSegue" {
                if let formViewController = segue.destination as? FormViewController {
                    // Pass the name of the dog to FormViewController
                    formViewController.mainDogName = mainDogName
                }
            }
        }
    
    
}
