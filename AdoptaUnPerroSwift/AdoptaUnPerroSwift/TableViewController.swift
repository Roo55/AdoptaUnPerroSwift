//
//  TableViewController.swift
//  AdoptaUnPerroSwift
//
//  Created by Administrador on 7/6/24.
//

import UIKit

class TableViewController: UITableViewController {
    
    var dogs = [Dog]()

    override func viewDidLoad() {
        super.viewDidLoad()

       //Create all the dog objects
        
        let dog1 = Dog(dogName: "Max", dogAge: "3 y/o", dogBreed: "Labrador Retriever", dogSize: "Big", dogDescription: "Max is a 3-year-old Labrador Retriever. He is a very active and energetic dog who enjoys long walks and play sessions in the park. He is extremely friendly and loves meeting new people and other dogs. Max is very intelligent and easy to train, making him an excellent companion for outdoor activities.", dogImage: UIImage(named: "fotomax")!)
           
        let dog2 = Dog(dogName: "Luna", dogAge: "2 y/o", dogBreed: "Golden Retriever", dogSize: "Medium", dogDescription: "Luna is a lovely 2-year-old Golden Retriever. She is a very affectionate and loyal dog who loves spending time with her family. She enjoys swimming and playing in the water, and is very sociable with other dogs and people. Luna has a playful and active personality, but also enjoys long naps on the couch with her loved ones.", dogImage: UIImage(named: "fotoluna")!)
           
        let dog3 = Dog(dogName: "Rocky", dogAge: "4 y/o", dogBreed: "French Bulldog", dogSize: "Small", dogDescription: "Rocky is a 4-year-old French Bulldog. Despite his small size, he has a bold and brave personality. He is a very affectionate dog and loves spending time with his family. Rocky is known for his playful nature and sense of humor. He enjoys mischief and getting belly rubs.", dogImage: UIImage(named: "fotorocky")!)
           
        let dog4 = Dog(dogName: "Buddy", dogAge: "5 y/o", dogBreed: "German Shepherd", dogSize: "Big", dogDescription: "Buddy is a 5-year-old German Shepherd. He is an athletic and strong dog with a friendly and protective disposition. Buddy is extremely loyal to his family and will do anything to protect them. He is very intelligent and excels in activities such as obedience training and canine sports. Despite his imposing appearance, Buddy is a gentle and loving dog who enjoys the company of his family.", dogImage: UIImage(named: "fotobuddy")!)
           
        let dog5 = Dog(dogName: "Daisy", dogAge: "1 y/o", dogBreed: "Bichon Frise", dogSize: "Small", dogDescription: "Daisy is an adorable 1-year-old Bichon Frise. She is a very playful and energetic dog who is always ready for an adventure. Daisy has an affectionate and loving personality, and loves spending time with her family. She is very sociable and loves meeting new people and other dogs. Daisy is also known for her soft, white, curly coat, which makes her irresistible to cuddle.", dogImage: UIImage(named: "fotodaisy")!)
           
           dogs = [dog1, dog2, dog3, dog4, dog5]
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 441
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "ViewToDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Access the destination VC
        let detailVC = segue.destination as! DetailDogViewController
        
        // Obtain the selected cell
        let selectedRow = tableView.indexPathForSelectedRow!.row
        
        // Recover the selected dog and send it to DetailViewController
        detailVC.mainDogName = dogs[selectedRow].dogName
        detailVC.mainDogAge = dogs[selectedRow].dogAge
        detailVC.mainDogBreed = dogs[selectedRow].dogBreed
        detailVC.mainDogSize = dogs[selectedRow].dogSize
        detailVC.mainDogDescription = dogs[selectedRow].dogDescription
        detailVC.mainDogImage = dogs[selectedRow].dogImage
    }
        
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dogs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! MainTableViewCell

        cell.dogName.text = dogs[indexPath.row].dogName.uppercased()
        cell.dogImage.image = dogs[indexPath.row].dogImage
        cell.labelPulsar.text = "Press for more information"

        return cell
    }
    
}
