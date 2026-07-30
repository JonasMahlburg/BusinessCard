//
//  ContentView.swift
//  JonasCard
//
//  Created by Jonas Mahlburg on 30.07.26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.06, green: 0.73, blue: 0.69, opacity: 1.00)
                .ignoresSafeArea()
            VStack {
                Image("jonas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(.circle)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Jonas Mahlburg")
                    .font(.custom("VT323-Regular", size: 40))
                Text("iOS Fullstack Developer")
                Divider()
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(.white)
                    .frame(height: 50)
                    .overlay(HStack{
                        Image(systemName: "phone.fill")
                            .foregroundColor(.green)
                        Text("+49 176 46703864")
                    })
   
            }
            .padding()
        }

    }
}

#Preview {
    ContentView()
}
