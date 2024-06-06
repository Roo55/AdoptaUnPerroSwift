//
//  MainTableViewCell.swift
//  AdoptaUnPerroSwift
//
//  Created by Administrador on 7/6/24.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var dogName: UILabel!
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var buttonMoreInformation: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
