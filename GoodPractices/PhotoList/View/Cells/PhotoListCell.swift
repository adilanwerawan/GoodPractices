//
//  PhotoListCell.swift
//  GoodPractices
//
//  Created by MacBook on 22/04/2022.
//

import UIKit

class PhotoListCell: UITableViewCell, DequeueIntializable {

    // IBOutlets
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoNameLabel: UILabel!
    @IBOutlet weak var authoerNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
