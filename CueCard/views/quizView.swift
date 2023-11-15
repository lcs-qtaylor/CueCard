//
//  quizView.swift
//  CueCard
//
//  Created by Quin Taylor on 2023-11-02.
//

import SwiftUI

struct quizView: View {
        //MARK: Stored Properties
    @State var selectedAnswer: Bool?
    @State var currentQuestionToAnswer = questionToAnswer.randomElement()!
    @State var history: [OutCome] = []
    @State var currentResult: Result = .undetermined
    @State var search = ""
    
        //MARK: Computed Properties
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 10, style: .circular)
                    
                    
                    Text(currentQuestionToAnswer.question)
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color.black)
                        .padding(.all)
                    
                    
                    
                }
                .frame(width: 380.0, height: 250.0)
                
                .padding(.bottom, 10)
                .foregroundColor(.orange)
                
                HStack{
                    Button(action: {
                        selectedAnswer = true
                        CheckAnswer()
                    }, label: {
                        Text("True")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                    })
                    .padding(.horizontal,50)
                    Button(action: {
                        selectedAnswer = false
                        CheckAnswer()
                    }, label: {
                        Text("false")
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                        
                    })
                    .padding(.horizontal,50)
                    
                }
                
                Text("\(currentResult.rawValue)")
                
                
            }
            TextField("Search", text: $search)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
            List(
                                filtering(originalList: history, on: search)
                            ) { currentOutCome in
                                HStack {
                                    Text(currentOutCome.card.question)
                                    Text(currentOutCome.result.rawValue)
                                }
                            }
                            .listStyle(InsetGroupedListStyle())
                        
        }
    }
        
//MARK: Functions
    func CheckAnswer() {
        let userAnswer = selectedAnswer ?? false // Default to false if selectedAnswer is nil
        
        let result: Result = (userAnswer == currentQuestionToAnswer.answer) ? .Correct : .Incorrect
        
        let outcome = OutCome(result: result, userAnswer: userAnswer, card: currentQuestionToAnswer)
        
        print(result.rawValue) // Print the result
        
        history.append(outcome)
        nextQuestion()
    }
    
    func nextQuestion() {
        currentQuestionToAnswer = questionToAnswer.randomElement()!
                selectedAnswer = nil
    }
     
}
#Preview {
    quizView()
}
