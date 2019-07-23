//
//  Presentor.swift
//  VIPER Test
//
//  Created by Anton Yermakov on 7/23/19.
//  Copyright © 2019 Anton Yermakov. All rights reserved.
//

import Foundation

class Presentor: ViewToPresentorProtocol{
   
    var view: PresentorToViewProtocol?
    var router: PresentorToRouterProtocol?
    var interactor: PresentorToInteractorProtocol?
    
    func updateView() {
        interactor?.fetchLiveNews()
    }
    
}

extension Presentor: InteractorToPresentorProtocol{
    func newsFetched(news: ArrayNews) {
        view?.showNews(newsModel: news)
    }
    
    func newsFailed() {
        view?.showError()
    }
}
