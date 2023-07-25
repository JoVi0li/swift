//
//  Question.swift
//  iQuiz
//
//  Created by João Vitor de Oliveira da Silva on 24/07/23.
//

import Foundation

struct Question {
    let title: String
    let answers: [String]
    let correctAnswer: Int
}

let questions: [Question] = [
    Question(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", answers: ["Expectro Patronum", "Avada Kedavra", "Expelliarmus"], correctAnswer: 2),
    Question(title: "Quando foi lançado o filme Avatar 2?", answers: ["2014", "2022", "2023"], correctAnswer: 1),
    Question(title: "Quando foi lançado o filme Vingadores Ultimato?", answers: ["2019", "2018", "2017"], correctAnswer: 0),
    Question(title: "Qual é o primeiro filme da franquia Star Wars?", answers: ["Star Wars: A Ameaça Fantasma", "Star Wars: Uma Nova Esperança", "Star Wars: O Império Contra-Ataca"], correctAnswer: 1),
    Question(title: "Qual é o primeiro filme do Universo Cinematográfico Marvel (MCU)?", answers: ["Homem de Ferro", "Capitão América: O Primeiro Vingador", "Thor"], correctAnswer: 0),
    Question(title: "Qual é o personagem principal de The Office, interpretado por Steve Carell?", answers: ["Michael Scott", "Jim Halpert", "Dwight Schrute"], correctAnswer: 0),
    Question(title: "Qual é o trabalho de Jay Pritchett na série Modern Family?", answers: ["Médico", "Empresário", "Advogado"], correctAnswer: 1),
]
