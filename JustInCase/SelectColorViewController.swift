//
//  AppDelegate.swift
//  JustInCase
//
//  Created by Maxim Spiridonov on 09/07/2019.
//  Copyright © 2019 IM. All rights reserved.
//

import UIKit

class SelectColorViewController: UIViewController {
    var  colorNumber:Int = 1
    
    @IBAction func yellowPressed(_ sender: Any) {
        colorNumber  = 1
        dismiss(animated: true, completion: nil)
        popoverPresentationController?.delegate?.popoverPresentationControllerDidDismissPopover?(popoverPresentationController!)
    }
    
    @IBAction func bluePressed(_ sender: Any) {
        colorNumber  = 2
        dismiss(animated: true, completion: nil)
        popoverPresentationController?.delegate?.popoverPresentationControllerDidDismissPopover?(popoverPresentationController!)
    }
    
    @IBAction func grayPressed(_ sender: Any) {
        colorNumber  = 3
        dismiss(animated: true, completion: nil)
        popoverPresentationController?.delegate?.popoverPresentationControllerDidDismissPopover?(popoverPresentationController!)
    }
    
    @IBAction func greenPressed(_ sender: Any) {
        colorNumber  = 4
        dismiss(animated: true, completion: nil)
        popoverPresentationController?.delegate?.popoverPresentationControllerDidDismissPopover?(popoverPresentationController!)
    }
    
    @IBAction func magentaPressed(_ sender: Any) {
        colorNumber  = 5
        dismiss(animated: true, completion: nil)
        popoverPresentationController?.delegate?.popoverPresentationControllerDidDismissPopover?(popoverPresentationController!)
    }
}
