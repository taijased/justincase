//
//  AppDelegate.swift
//  JustInCase
//
//  Created by Maxim Spiridonov on 09/07/2019.
//  Copyright © 2019 IM. All rights reserved.
//

import UIKit

class tableCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellButton: UIButton!
    @IBOutlet weak var cellTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let imageView = UIImageView()
        let image = UIImage(named: "S2")
        imageView.image = image
        self.backgroundView = imageView
    }
}
