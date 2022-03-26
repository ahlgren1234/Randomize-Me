//
//  LettersView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-28.
//

import SwiftUI

struct LettersView: View {
    
    let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    struct Unique: Identifiable, ExpressibleByStringLiteral {
        let value: String
        let id = UUID()
        
        init(stringLiteral value: String) {
            self.value = value
        }
    }
    
    @State var letterList: [Unique] = []
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        
        VStack {
            Text("Letters")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.accentColor)
            
            Divider()
            
            ScrollView {
                
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    
                    ForEach(letterList, id: \.id) { item in

                        ZStack {
                            Rectangle()
                                .frame(width: 170, height: 80)
                                .foregroundColor(.green)
                                .cornerRadius(20)

                            Text("\(item.value)")
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .medium, design: .rounded))

                        } //: ZSTACK
                    }
                    
                } //: LAZYVGRID
                
            } //: SCROLLVIEW
            
            VStack {
                Divider()
                
                Button {
                    letterList = []
                } label: {
                    Text("Clear")
                }
                
                Button {

                    let randomLetter = letters.randomElement()
                    let newLetter = Unique(stringLiteral: randomLetter!)
                    letterList.append(newLetter)
                    
                } label: {
                    Text("Randomize")
                }
                .foregroundColor(Color.white)
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(8)
                .padding()
                
            } //:VSTACK
            
        } //: VSTACK
    }
}

struct LettersView_Previews: PreviewProvider {
    static var previews: some View {
        LettersView()
    }
}
