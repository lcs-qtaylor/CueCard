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
    @State private var currentResult: Result = .undetermined
//    @State var newCardIsShowing = false
//    @State var newQuestion: String = ""
//    @State var newAnswer: Bool = false
//    @State var cardList = questionToAnswer
//    @State var showMyCardsSheet = false
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
//            .toolbar{
//                ToolbarItem{
//                    Menu {
//                        Button(action: {
//                            newCardIsShowing = true
//                        }) {
//                            Text("Add Card")
//                            Image(systemName: "plus.app.fill")
//                        }
//                        Button(action: {
//                            showMyCardsSheet = true
//                        }) {
//                            Image(systemName: "list.bullet")
//                            Text("My cards")
//                        }
//                    } label: {
//                        Image(systemName: "menucard")
//                    }
//                    
//                }
                
//            }
//            .sheet(isPresented: $newCardIsShowing) {
//                addCardView(newQuestion: $newQuestion, newAnswer: $newAnswer,cardList: $cardList)
//            }
//            .sheet(isPresented: $showMyCardsSheet) {
//                myCardsView(cardList: $cardList)
//            }
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
