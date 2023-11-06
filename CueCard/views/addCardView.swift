//
//  addCardView.swift
//  CueCard
//
//  Created by Quin Taylor on 2023-11-04.
//
//
import SwiftUI

struct addCardView: View {
    @Binding var newQuestion: String
    @Binding var newAnswer: Bool
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("New Item")) {
                    TextField("New Question", text: $newQuestion)
                    Toggle("Is Complete", isOn: $newAnswer) // change button type
                    
                }
            }
        }
    }
}
