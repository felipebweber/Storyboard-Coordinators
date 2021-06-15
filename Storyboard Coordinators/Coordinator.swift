//
//  Coordinator.swift
//  Storyboard Coordinators
//
//  Created by Felipe Bayer Weber on 15/06/21.
//

import Foundation
import UIKit

protocol Coodinator {
    var childCoordinators: [Coodinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
