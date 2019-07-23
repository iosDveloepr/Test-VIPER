//
//  Protocols.swift
//  VIPER Test
//
//  Created by Anton Yermakov on 7/23/19.
//  Copyright © 2019 Anton Yermakov. All rights reserved.
//

import Foundation
import UIKit

protocol ViewToPresentorProtocol: class{
    var view: PresentorToViewProtocol? { get set }
    var interactor: PresentorToInteractorProtocol? { get set }
    var router: PresentorToRouterProtocol? { get set }
    func updateView()
}

protocol PresentorToViewProtocol: class{
    func showNews(newsModel: ArrayNews)
    func showError()
}

protocol InteractorToPresentorProtocol: class{
    func newsFetched(news: ArrayNews)
    func newsFailed()
}

protocol PresentorToInteractorProtocol: class{
    func fetchLiveNews()
    var  presentor: InteractorToPresentorProtocol? { get set }
}

protocol PresentorToRouterProtocol: class{
    static func createModule() -> UIViewController
}


