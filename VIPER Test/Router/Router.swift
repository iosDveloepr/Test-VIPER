//
//  Router.swift
//  VIPER Test
//
//  Created by Anton Yermakov on 7/23/19.
//  Copyright © 2019 Anton Yermakov. All rights reserved.
//

import Foundation
import UIKit

class Router: PresentorToRouterProtocol{
   
    class func createModule() -> UIViewController{
        let view = storyboard.instantiateViewController(withIdentifier: "MainVC") as? ViewController
        let router: PresentorToRouterProtocol = Router()
        let interactor: PresentorToInteractorProtocol = Interactor()
        let presentor: ViewToPresentorProtocol & InteractorToPresentorProtocol = Presentor()
        
        view?.presentor = presentor
        presentor.view = view
        presentor.router = router
        presentor.interactor = interactor
        interactor.presentor = presentor
        
        return view!
    }
    
    static let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    
}
