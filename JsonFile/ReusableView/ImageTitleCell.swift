//
//  ImageTitleCell.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 28.08.25.
//

import UIKit

class ImageTitleCell: UICollectionViewCell {
    @IBOutlet private weak var actionButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    func configure(text: String) {
    func configure(data: Country) {
//        actionButton.titleLabel?.text = text
        actionButton.titleLabel?.text = data.countryName
    }
}
