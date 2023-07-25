//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by João Vitor de Oliveira da Silva on 23/07/23.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionTitleLabel: UILabel!
    
    @IBAction func onPressedQuestionAnswerButton(_ sender: UIButton) {
    }
    
    @IBOutlet var questionButtons: [UIButton]!
    
    func setupLayout() {
        navigationItem.hidesBackButton = true
        
        for button in questionButtons {
            button.layer.cornerRadius = 12
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
