//
//  PerformanceViewController.swift
//  iQuiz
//
//  Created by João Vitor de Oliveira da Silva on 24/07/23.
//

import UIKit

class PerformanceViewController: UIViewController {
    var points: Int?
    
    @IBOutlet weak var statsLabel: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var resetQuizButton: UIButton!
    
    func setupLayout(){
        resetQuizButton.layer.cornerRadius = 12
        navigationItem.hidesBackButton = true
    }
    
    func setupPerformance(){
        guard let points = points else { return }
        let percentage = (points * 100) / questions.count
        statsLabel.text = "Vocâ acertou \(points) de \(questions.count) questões."
        percentageLabel.text = "Percentual final: \(percentage)%"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupPerformance()
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
