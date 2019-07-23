//
//  ViewController.swift
//  VIPER Test
//
//  Created by Anton Yermakov on 7/23/19.
//  Copyright © 2019 Anton Yermakov. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var text: UITextView!
    @IBOutlet weak var date: UILabel!
    
    var presentor: ViewToPresentorProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        
       presentor?.updateView()
    }
    
}


extension ViewController: PresentorToViewProtocol{
   
    func showNews(newsModel: ArrayNews) {
        self.author.text = newsModel.articles.first?.author!
        self.text.text = newsModel.articles.first?.description!
        self.date.text = newsModel.articles.first?.publishedAt!
    }
    
    func showError() {
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching News", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
