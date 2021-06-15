//
//  Storyboarded.swift
//  Storyboard Coordinators
//
//  Created by Felipe Bayer Weber on 15/06/21.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}


extension Storyboarded where Self: UIViewController {
    
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if #available(iOS 13.0, *) {
            return storyboard.instantiateViewController(identifier: id) as! Self
        } else {
            // Fallback on earlier versions
            return storyboard.instantiateInitialViewController() as! Self
        }
    }
}
