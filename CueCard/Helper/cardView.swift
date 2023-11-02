//
//  cardView.swift
//  CueCard
//
//  Created by Quin Taylor on 2023-11-02.
//

import SwiftUI

struct cardView: View {
    
    var body: some View {
        VStack {
            ZStack {
                
                RoundedRectangle(cornerRadius: 10, style: .circular)
                    
                
//                Text($question)
                    .font(.body)
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                    .padding(.all)
                    
                
                
            }
            .frame(width: 380.0, height: 250.0)
            
            .padding(.bottom, 10)
            .foregroundColor(.orange)
        }
        
    }
}

#Preview {
    cardView()
}
