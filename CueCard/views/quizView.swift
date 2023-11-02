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
    @State var currentQuestionToAnswer =
    questionToAnswer.randomElement()!
    @State var history: [Result] = []
    
        //MARK: Computed Properties
    var body: some View {
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
            
            
        }
    }
        //MARK: Functions
             
        func CheckAnswer() {
            if selectedAnswer == currentQuestionToAnswer.answer {
                
                print("Correct")
            }else {
                
                print("Incorrect")
            }
        }
     
}
#Preview {
    quizView()
}
