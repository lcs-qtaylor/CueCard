//
//  cueCard.swift
//  CueCard
//
//  Created by Quin Taylor on 2023-11-01.
//

import Foundation

struct OutCome: Identifiable {
    let id = UUID()
    let result: Result
    let userAnswer: Bool
    let card: Card
}

struct Card: Identifiable {
    let id = UUID()
    var question: String
    var answer: Bool
}

 var questionToAnswer = [
    Card(question: "The capital of Iceland is Reykjavik",
         answer: true),

    Card(question: "Cats are a type of reptile",
         answer: false),

    Card(question: "The Eiffel Tower is located in London",
         answer: false),

    Card(question: "The programming language Python was named after the snake",
         answer: true),

    Card(question: "Bananas are berries",
         answer: true),

    Card(question: "Mount Everest is the tallest mountain in the world",
         answer: true),

    Card(question: "The Great Wall of China can be seen from space with the naked eye",
         answer: false),

    Card(question: "Java is an island in Indonesia",
         answer: false),

    Card(question: "The sun is a planet",
         answer: false),

    Card(question: "Bees communicate by dancing",
         answer: true),
]
