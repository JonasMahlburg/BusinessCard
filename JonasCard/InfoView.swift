//
//  InfoView.swift
//  JonasCard
//
//  Created by Jonas Mahlburg on 30.07.26.
//

import SwiftUI

struct InfoView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 40)
            .fill(.white)
            .frame(height: 50)
            .overlay(HStack{
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InfoView(imageName: "phone.fill", text: "Hallo Welt")
}
