//
//  cueCard.swift
//  CueCard
//
//  Created by Quin Taylor on 2023-11-01.
//

import Foundation

struct OutCome: Identifiable{
    let id = UUID()
    let result: Result
    let card: Card
}

struct Card: Identifiable {
    let id = UUID()
    var question: String
    var answer: Bool
}

 var questionToAnswer = [

  Card(question: "Iron is a metal",
       answer: true ),
  
  Card(question: "Iron is not a metal",
       answer: false ),
  
  Card(question: "rap is music",
       answer: false ),
  
  Card(question: "I love coding",
       answer: true ),
]
