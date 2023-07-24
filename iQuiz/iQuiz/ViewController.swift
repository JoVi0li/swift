//
//  ViewController.swift
//  iQuiz
//
//  Created by João Vitor de Oliveira da Silva on 23/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var initQuizButton: UIButton!
    
    @IBAction func onTouch(_ sender: Any) {
        print("touch")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    func setLayout() {
        initQuizButton.layer.cornerRadius = 12.0
    }


}

