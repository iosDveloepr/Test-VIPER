//
//  Interactor.swift
//  VIPER Test
//
//  Created by Anton Yermakov on 7/23/19.
//  Copyright © 2019 Anton Yermakov. All rights reserved.
//

import Foundation
import Alamofire


class Interactor: PresentorToInteractorProtocol{
    
    weak var presentor: InteractorToPresentorProtocol?
    
    func fetchLiveNews(){
        AF.request(Constants.URL, method: .get).responseJSON {
            (response) in
            if response.error == nil {
                guard let data = response.data else {return}
                do{
                    let myResponse = try JSONDecoder().decode(ArrayNews.self, from: data)
                    self.presentor?.newsFetched(news: myResponse)
                }
                catch{}
            } else {
                self.presentor?.newsFailed()
            }
        }
    }
}


