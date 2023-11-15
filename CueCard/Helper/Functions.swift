//
//  Functions.swift
//  CueCard
//
//  Created by Quin Taylor on 2023-11-01.
//
import Foundation

func filtering(
    originalList: [OutCome],
    on search: String
) -> [OutCome] {
    if search.isEmpty {
        return originalList
    }

    var filteredList: [OutCome] = []

    for outcome in originalList {
        if outcome.card.question.lowercased().contains(search.lowercased()) {
            filteredList.append(outcome)
        }
    }

    return filteredList
}
