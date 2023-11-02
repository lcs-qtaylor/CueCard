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
        //MARK: Computed Properties
        var body: some View {
            VStack {
                cardView()
                HStack{
                    Button(action: {
                        self.selectedAnswer = true
                    }, label: {
                        Text("True")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                    })
                    .padding(.horizontal,50)
                    Button(action: {
                        self.selectedAnswer = false
                    }, label: {
                        Text("false")
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            
                    })
                    .padding(.horizontal,50)
                    
                }
                
                
                
            }
       //MARK: Functions
        }
    }
#Preview {
    quizView()
}
