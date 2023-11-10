//
//  addCardView.swift
//  CueCard
//
//  Created by Quin Taylor on 2023-11-04.
//
//
//import SwiftUI
//
//struct addCardView: View {
//    @Binding var newQuestion: String
//    @Binding var newAnswer: Bool
//    @Environment(\.dismiss) var dismiss
//    @Binding var cardList: [Card] // Binding to the list of Card
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Section(header: Text("New Item")) {
//                    TextField("New Question", text: $newQuestion)
//                    HStack{
//                       Text("False")
//                            .padding()
//                        Spacer()
//                        Toggle("", isOn: $newAnswer)
//                        Spacer()
//                            .padding()
//                        Text("True")
//                    }
//                    
//                }
//            }
//            .navigationBarItems(
//                leading: Button(action: {
//                    self.dismiss()
//                }) {
//                    Text("Cancel")
//                },
//                trailing: Button(action: {
//                    // Append new info to the list of Card
//                    cardList.append(Card(question: newQuestion, answer: newAnswer))
//                    self.dismiss()
//                }) {
//                    Text("Save")
//                }
//            )
//        }
//        
//    }
//    func tOrF() {
//        if newAnswer == true {
//            print("true")
//        }else{
//            print("false")
//        }
//    }
//}
