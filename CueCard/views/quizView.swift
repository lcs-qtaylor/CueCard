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
    @State var history: [Result] = []
    @State var currentResult: Result = .undetermined
    @State var newCardisShowing = false
    @State var newQuestion: String = ""
    @State var newAnswer: Bool = false
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
                HStack {
                    
                    Text("History")
                        .font(.title)
                    
                    
                }
                List {
                    
                }
                
                
            }
            .toolbar{
                ToolbarItem{
                    Menu {
                        Button(action: {
                            newCardisShowing = true
                        }) {
                            Text("Add Card")
                            Image(systemName: "plus.app.fill")
                        }
                        Button(action: {
                            
                        }) {
                            Image(systemName: "minus.square.fill")
                            Text("Delete Card")
                        }
                    } label: {
                        Image(systemName: "menucard")
                    }
                    
                }
                
            }
            
        }
        
    }
        
//MARK: Functions
    func CheckAnswer() {
        if self.selectedAnswer == self.currentQuestionToAnswer.answer {
            
            print("Correct")
        currentResult = .Correct
            nextQuestion()
        }else {
            
            print("Incorrect")
        currentResult = .Incorrect
            nextQuestion()
        }
    }
    
    func nextQuestion() {
        
        
    }
     
}
#Preview {
    quizView()
}
