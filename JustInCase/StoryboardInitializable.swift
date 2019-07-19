//
//  StoryboardInitializable.swift
//  ARI
//
//  Created by Maxim Spiridonov on 25/05/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

protocol StoryboardInitializable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardInitializable where Self: UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: Self.self)
    }
    
    static func initFromStoryboard(name: String = "Main") -> Self {
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}

//
//extension UIViewController {
//    class func loadFromStoryboard<T: UIViewController>() -> T {
//        let name = String(describing: T.self)
//        let storyboard = UIStoryboard(name: name , bundle: nil)
//        if let viewController = storyboard.instantiateInitialViewController() as? T {
//            return viewController
//        } else {
//            fatalError("Error: No inital view controllrt in \(name) storyboard")
//        }
//    }
//}

