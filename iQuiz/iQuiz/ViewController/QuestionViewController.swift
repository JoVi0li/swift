//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by João Vitor de Oliveira da Silva on 23/07/23.
//

import UIKit

class QuestionViewController: UIViewController {
    var points: Int = 0
    var questionNumber: Int = 0

    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBAction func onPressedQuestionAnswerButton(_ sender: UIButton) {
        let isCorrectAnswer = questions[questionNumber].correctAnswer == sender.tag
        
        if isCorrectAnswer {
            points += 1
            sender.backgroundColor = UIColor.backgroundGreen
        } else {
            sender.backgroundColor = UIColor.backgroundRed
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(setupQuestion), userInfo:  nil, repeats: false)
        } else {
            navigateToPerformanceScreen()
        }
        
    }
    @IBOutlet var questionButtons: [UIButton]!
    
    func setupLayout() {
        navigationItem.hidesBackButton = true
        
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        
        for button in questionButtons {
            button.layer.cornerRadius = 12
        }
    }
    
    @objc func setupQuestion() {
        questionTitleLabel.text = questions[questionNumber].title
        
        for button in questionButtons {
            button.setTitle(questions[questionNumber].answers[button.tag], for: .normal)
            button.backgroundColor = UIColor.backgroundPurple
        }
    }
    
    func resetGame() {
        questionNumber = 0
    }
    
    func navigateToPerformanceScreen() {
        performSegue(withIdentifier: "goToPerformanceScreen", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupQuestion()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performanceVC = segue.destination as? PerformanceViewController else { return }
        performanceVC.points = points
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
