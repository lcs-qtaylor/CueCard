//
//  cueCard.swift
//  CueCard
//
//  Created by Quin Taylor on 2023-11-01.
//

import Foundation

struct OutCome: Identifiable{
    let id = UUID()
    let selectedAnswer: Bool
    let result: Result
}
struct Card: Identifiable {
    
    let id = UUID()
    let question: String
    let answer: Bool
}

let questionToAnswer = [ 

  Card(question: "Iron is a metal?",
       answer: true ),
  
  

]
