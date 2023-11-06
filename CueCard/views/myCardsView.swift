//
//  myCardsView.swift
//  CueCard
//
//  Created by Quin Taylor on 2023-11-06.
//

import SwiftUI

struct myCardsView: View {
    @Binding var cardList: [Card]
    @Environment(\.dismiss) var dismiss
        var body: some View {
            NavigationView {
                List(cardList) { card in
                    Text("\(card.question) - \(card.answer ? "True" : "False")")
                }
                .navigationBarItems(trailing:
                    Button(action: {
                       self.dismiss()
                    }) {
                        Text("Done")
                    }
                )
                .navigationBarTitle("My Cards")
            }
        }
    }
